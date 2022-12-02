#include "test.hpp"
#include <iostream>

void hellofunc() {
  int i = addone(400, 393);
  std::cout << i << std::endl;
  std::cout << "buuuh" << std::endl;
}

int main() {
  // std::cout << "hallo du" << std::endl;
  // int a = addone(3, 4);
  // std::cout << a << std::endl;
  // hellofunc();
  // printf("hallo");
  int myNumber;
  std::cin >> myNumber;
  std::cout << myNumber << std::endl;
  return 0;
}
