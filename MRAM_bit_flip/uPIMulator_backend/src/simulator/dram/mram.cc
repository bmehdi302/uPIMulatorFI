
#include "simulator/dram/mram.h"

//int64_t upmem_sim::simulator::dram::MRAM::fault_inj_addr = -1; //init static variable                                
namespace upmem_sim::simulator::dram {


  bool MRAM::fault_injection_enabled_ = false;
  Address MRAM::fault_address_ = 0;
  int MRAM::fault_byte_ = 0;
  int MRAM::fault_bit_position_ = 0;
  int MRAM::launch_address_ = 0;

  // Function to load JSON parameters
  void MRAM::loadFaultParameters(const std::string& json_file_path) {
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
          fault_byte_ = json_data["fault_byte"].get<int>();
          fault_bit_position_ = json_data["fault_bit_position"].get<int>();
          launch_address_ = json_data["launch_address"].get<int>();
      } 

      catch (const std::exception& e) {
          std::cerr << "Error parsing JSON: " << e.what() << std::endl;
      }
  }

MRAM::MRAM(util::ArgumentParser *argument_parser)
    : address_(new abi::word::DataAddressWord()),
      size_(util::ConfigLoader::mram_size()) {
  address_->set_value(util::ConfigLoader::mram_offset());

  wordline_size_ = argument_parser->get_int_parameter("wordline_size");

  assert(wordline_size_ > 0);
  assert(wordline_size_ % util::ConfigLoader::min_access_granularity() == 0);
  assert(address() % wordline_size_ == 0);
  assert(size_ % wordline_size_ == 0);

  num_wordlines_ =
      static_cast<int>(util::ConfigLoader::mram_size() / wordline_size_);

  wordlines_.resize(num_wordlines_);
  for (int i = 0; i < num_wordlines_; i++) {
    wordlines_[i] =
        new Wordline(argument_parser, address() + i * wordline_size_);
  }

  // Load fault injection params
  loadFaultParameters("/home/ebelhadd/GEMV_workspace/uPIMulator/python_cpp/uPIMulator_backend/FI/fi_params.json");
  
  // open log file for address logging ( append mode )
  //log_file_.open("mram_access.txt", std::ios::app);
}

MRAM::~MRAM() {
  delete address_;

  if (log_file_.is_open()) {
    log_file_.close();
  }

  for (int i = 0; i < num_wordlines_; i++) {
    delete wordlines_[i];
  }
}

// Inject bit flip fault at specified address
void MRAM::inject_bit_flip(Address address) {
    auto data = wordlines_[index(address)]->read();
    auto before = data[fault_byte_];

    data[fault_byte_] ^= (1 << fault_bit_position_); // Flip the bit
    wordlines_[index(address)]->write(data);
    std::cout << "[FI] Bit flip injected at address : " << std::dec << address << std::endl;
    std::cout << "[FI] Byte before : " << std::dec << before << std::endl
              << "[FI] Byte after  : " << std::dec << data[fault_byte_] << std::endl;
    fault_injection_enabled_ = false;
}

std::vector<int> MRAM::read(Address address) {
  address_access_count_[address]++;
  if(address_access_count_[launch_address_]>=2){  //The cpu::launch starts from the second access to launch_address_, except for RED(3rd) and TRNS(5th) (with our data prep param)
    if(fault_injection_enabled_ && address == fault_address_){
      inject_bit_flip(address);
    }
  }
  return wordlines_[index(address)]->read();
}

void MRAM::write(Address address, std::vector<int> bytes) {
  wordlines_[index(address)]->write(std::move(bytes));
}

void MRAM::write(Address address, encoder::ByteStream *byte_stream) {
  wordlines_[index(address)]->write(byte_stream);
}

int MRAM::index(Address address) {
  assert(address >= this->address());
  assert(address + abi::word::DataWord().size() <= this->address() + size_);
  assert(address % wordline_size_ == 0);

  return static_cast<int>((address - this->address()) / wordline_size_);
}

}  
// namespace upmem_sim::simulator::dram


