#include "simulator/sram/iram.h"

#include "encoder/instruction_encoder.h"

namespace upmem_sim::simulator::sram {

  static bool fault_injection_enabled_ = false;
  static Address fault_address_ = 0;
  static int fault_bit_position_ = 0;
  static int fault_byte_ = 0;
  // Function to load JSON parameters
  void IRAM::loadFaultParameters(const std::string& json_file_path) {
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
          fault_byte_ = json_data["fault_byte"].get<int>();
      }

      catch (const std::exception& e) {
          std::cerr << "Error parsing JSON: " << e.what() << std::endl;
      }
  }
IRAM::IRAM() {
  address_ = new abi::word::InstructionAddressWord();
  address_->set_value(util::ConfigLoader::iram_offset());

  size_ = util::ConfigLoader::iram_size();

  assert(address() % abi::word::InstructionWord().size() == 0);
  assert(size_ % abi::word::InstructionWord().size() == 0);

  cells_.resize(num_instruction_words());
  for (int i = 0; i < num_instruction_words(); i++) {
    cells_[i] = new abi::word::InstructionWord();
  }

  //Load wram injection params
  loadFaultParameters("/home/ebelhadd/iram_tests/SCAN-RSS/uPIMulator/python_cpp/uPIMulator_backend/FI/fi_params.json");
  // open log file for address logging 
  //log_file_.open("SCAN-RSS.txt", std::ios::app);
}

IRAM::~IRAM() {
  delete address_;
  //delete log_file
  /*if (log_file_.is_open()) {
    log_file_.close();
  }*/
  for (int i = 0; i < size_ / num_instruction_words(); i++) {
    delete cells_[i];
  }
}

void IRAM::inject_bit_flip(Address address) {
  // Retrieve the byte stream at the given address
  encoder::ByteStream *current = cells_[index(address)]->to_byte_stream();
  auto byte = current->byte(fault_byte_);
  std::cout << " Byte before : " << byte << std::endl;

  byte ^= (1 << fault_bit_position_); //Apply Bit-flip  
  current->set_byte(fault_byte_, byte);
  std::cout << " IRAM Bit flip injected at address : " << address << std::endl;

  // Write the modified byte stream back into the cell
  cells_[index(address)]->from_byte_stream(current);
  std::cout << " Byte after : " << current->byte(fault_byte_) << std::endl;

  fault_injection_enabled_ = false;
  // Clean up
  delete current;
}

abi::instruction::Instruction *IRAM::read(Address address) {
  /*if (log_file_.is_open())
  {
    log_file_ << std::dec << address << std::endl;
  }*/
  encoder::ByteStream *byte_stream = cells_[index(address)]->to_byte_stream();
  abi::instruction::Instruction *instruction =
      encoder::InstructionEncoder::decode(byte_stream);
      
  if(address == fault_address_ && fault_injection_enabled_)
    inject_bit_flip(fault_address_);
  
  delete byte_stream;
  return instruction;
}

void IRAM::write(Address address, encoder::ByteStream *byte_stream) {
  cells_[index(address)]->from_byte_stream(byte_stream);
}

int IRAM::index(Address address) {
  assert(address >= this->address());
  assert(address + abi::word::InstructionWord().size() <=
         this->address() + size_);
  assert((address - this->address()) % abi::word::InstructionWord().size() ==
         0);

  return static_cast<int>((address - this->address()) /
                          abi::word::InstructionWord().size());
}

}  // namespace upmem_sim::simulator::sram
