#include "simulator/sram/wram.h"
#include <iostream>

namespace upmem_sim::simulator::sram {

  static bool fault_injection_enabled_ = false;
  static Address fault_address_ = 0;
  static int fault_bit_position_ = 0;
  static int launch_address_ = 0;
  // Function to load JSON parameters
  void WRAM::loadFaultParameters(const std::string& json_file_path) {
      std::ifstream file(json_file_path);
      if (!file.is_open()) {
          std::cerr << "Could not open file: " << json_file_path << std::endl;
          return;
      }

      try {
          nlohmann::json json_data;
          file >> json_data;

          fault_injection_enabled_ = json_data["fault_injection_enabled"].get<bool>();
          fault_address_ = json_data["fault_address"].get<int64_t>();
          fault_bit_position_ = json_data["fault_bit_position"].get<int>();
      } 

      catch (const std::exception& e) {
          std::cerr << "Error parsing JSON: " << e.what() << std::endl;
      }
  }

WRAM::WRAM() {
  address_ = new abi::word::DataAddressWord();
  address_->set_value(util::ConfigLoader::wram_offset());

  size_ = util::ConfigLoader::wram_size();

  assert(address() % abi::word::DataWord().size() == 0);
  assert(size_ % abi::word::DataWord().size() == 0);

  cells_.resize(num_data_words());
  for (int i = 0; i < num_data_words(); i++) {
    cells_[i] = new abi::word::DataWord();
  }

  //Load wram injection params
  loadFaultParameters("/home/ebelhadd/wram_tests/GEMV/uPIMulator/python_cpp/uPIMulator_backend/FI/fi_params.json");

  // open log file for address logging 
  //log_file_.open("HST-S.txt", std::ios::app);
}



WRAM::~WRAM() {
  delete address_;
  //delete log_file
  /*if (log_file_.is_open()) {
    log_file_.close();
  }*/

  for (int i = 0; i < num_data_words(); i++) {
    delete cells_[i];
  }
}

void WRAM::inject_bit_flip(Address address) {
    // Read the current data
    auto current_value = cells_[index(address)]->value(abi::word::UNSIGNED);

    // Log the cell's current state
    std::cout << "[FI] WRAM bit-flip at address: " << std::dec << address << std::endl;
    std::cout << "[FI] cell before: " << std::dec << current_value << std::endl;

    // Flip the specified bit
    int64_t flipped_value = current_value ^ (1 << fault_bit_position_); 
    cells_[index(address)]->set_value(flipped_value);

    // Log the cell's new state
    std::cout << "[FI] cell after: " << std::dec << cells_[index(address)]->value(abi::word::UNSIGNED) << std::endl;

    // Disable fault injection after the flip
    fault_injection_enabled_ = false;
}

int64_t WRAM::read(Address address) {
  address_access_count_[address]++;
  /*if (log_file_.is_open())
  {
    log_file_ << std::dec << address << std::endl;
  }*/
  // write happens at the 4th access bcs all 4bytes are transfered, before , there are no values and bit flipping has no impact
  if (fault_injection_enabled_ && address == fault_address_ && address_access_count_[address]%4 == 0) { 
    inject_bit_flip(address);
  }
  return cells_[index(address)]->value(abi::word::UNSIGNED);
}

void WRAM::write(Address address, int64_t value) {
  cells_[index(address)]->set_value(value);
}

void WRAM::write(Address address, encoder::ByteStream *byte_stream) {
  cells_[index(address)]->from_byte_stream(byte_stream);
}

int WRAM::index(Address address) {
  assert(address >= this->address());
  assert(address + abi::word::DataWord().size() <= this->address() + size_);
  assert((address - this->address()) % abi::word::DataWord().size() == 0);

  return static_cast<int>((address - this->address()) /
                          abi::word::DataWord().size());
}

}  // namespace upmem_sim::simulator::sram