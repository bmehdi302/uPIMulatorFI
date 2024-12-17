#ifndef UPMEM_SIM_SIMULATOR_DRAM_MRAM_H_
#define UPMEM_SIM_SIMULATOR_DRAM_MRAM_H_

/**/
#include <iostream>
#include <bitset>
#include <unordered_map>
#include <fstream>
#include <iomanip>
#include <nlohmann/json.hpp> 
/**/
#include <vector>

#include "abi/word/data_address_word.h"
#include "simulator/dram/wordline.h"
#include "util/argument_parser.h"

namespace upmem_sim::simulator::dram {

class MRAM {
 public:
  explicit MRAM(util::ArgumentParser *argument_parser);
  ~MRAM();
  
  Address address() { return address_->address(); }
  Address size() { return size_; }

  std::vector<int> read(Address address);

  void write(Address address, std::vector<int> bytes);
  void write(Address address, encoder::ByteStream *byte_stream);

  void cycle() = delete;

  // public inject method( to use from outside mram)
  void inject_fault_at_address(Address address);
  void inject_stuck_at(Address address) ;
  static void loadFaultParameters(const std::string &json_file_path);
  // Fault injection parameters
  static bool fault_injection_enabled_;
  static Address fault_address_;
  static int fault_byte_;
  static int fault_bit_position_;
  static int launch_address_;
  std::unordered_map<Address, int> address_access_count_; // count memory accesses number

protected:
  int index(Address address);

private:
  std::ofstream log_file_;  // Add variable for logging
  abi::word::DataAddressWord *address_;
  Address size_;
  std::vector<Wordline *> wordlines_;

  Address wordline_size_;
  int num_wordlines_;

  static Address fault_inj_addr;

};

}  // namespace upmem_sim::simulator::dram

#endif
