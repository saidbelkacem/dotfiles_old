#include <iostream>

int main() {

  int currentValue = 0;
  int value = 0;
  if (std::cin >> currentValue) {
    int count = 1; // store count for currentVal
    while (std::cin >> value) {
      if (value == currentValue) {
        ++count;
      } else {
        std::cout << currentValue << " occurs " << count << " times"
                  << std::endl;
        currentValue = value;
        count = 1;
      }
    }
  }
  return 0;
}
