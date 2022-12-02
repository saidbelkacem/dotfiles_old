#include <iostream>
#include <cmath>
#include <vector>
#include <string>

int main()
{
    // std::cout << "Enter a number between 0 and 255:" << std::endl;
    // unsigned short inputNumber;
    // std::cin >> inputNumber;

    // std::bitset<8> inputBits = inputNumber;
    // std::cout << "Input Number in binary is: " << inputBits << std::endl;

    std::cout << "Enter a number between 0 and 255:" << std::endl;
    unsigned short inputNumber;
    std::cin >> inputNumber;

    std::cout << "Logical AND, & with 0000111:" << std::endl;
    std::bitset<8> inputBits = inputNumber;
    std::bitset<8> bitwiseAND = (0x0F & inputNumber); // 0x0F is 00001111 (decimal 15)
    std::cout << "00001111 & " << inputBits << " = " << bitwiseAND << std::endl;

}
