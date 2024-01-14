#include <iostream>

#include "greeter.hpp"

int main() {
  Greeter greeter;
  std::cout << greeter.greet() << std::endl;
  return 0;
}
