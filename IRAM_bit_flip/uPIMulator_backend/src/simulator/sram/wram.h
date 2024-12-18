#ifndef UPMEM_SIM_SIMULATOR_SRAM_WRAM_H_
#define UPMEM_SIM_SIMULATOR_SRAM_WRAM_H_

#include "abi/word/data_address_word.h"
#include "abi/word/data_word.h"
/**/
#include <iostream>
#include <bitset>
#include <unordered_map>
#include <fstream>
#include <iomanip>
#include <nlohmann/json.hpp> 
#include <vector>
/**/

namespace upmem_sim::simulator::sram {

class WRAM {
 public:
  explicit WRAM();
  ~WRAM();

  Address address() { return address_->address(); }
  Address size() { return size_; }

  int64_t read(Address address);

  void write(Address address, int64_t value);
  void write(Address address, encoder::ByteStream *byte_stream);

  void cycle() = delete;
  //WRAM Bit flip
  void inject_bit_flip(Address address);
  static void loadFaultParameters(const std::string &json_file_path);
  std::unordered_map<Address, int> address_access_count_; // count memory accesses number
protected:
  static int num_data_words() {
    return static_cast<int>(util::ConfigLoader::wram_size() /
                            abi::word::DataWord().size());
  }
  int index(Address address);

 private:
  std::ofstream log_file_;  // Add variable for logging wram addresses
  abi::word::DataAddressWord *address_;
  Address size_;
  std::vector<abi::word::DataWord *> cells_;

};

}  // namespace upmem_sim::simulator::sram

#endif
