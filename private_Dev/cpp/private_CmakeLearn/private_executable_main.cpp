#include "adder.h"
#include <iostream>

int main() {
  std::cout << add(4.4f, 33.3f) << std::endl;
  std::cout << "test" << std::endl;

  int a = add(4, 4);
  std::cout << a << std::endl;
  std::cout << a << std::endl;
  return 0;
}
