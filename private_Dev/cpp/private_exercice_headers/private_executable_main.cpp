#include <iostream>
#include <cmath>
#include <vector>
#include <string>
void Log(const char *message)
{
    std::cout << message << std::endl;
}

int main()
{
    std::vector<int> dynArray(3);

    dynArray[0] = {5};
    dynArray[1] = {23};
    dynArray[2] = {14};
    int newValue = 0;

    std::cout << "Enter a new Numer: " << std::endl;
    // std::cin >> newValue;
    // dynArray.push_back(newValue);
    std::cout << "Number of integers in array: " << dynArray.size() << std::endl;

    std::string inputLineByUser;
    std::cin >> inputLineByUser;
    // std::cout << inputLineByUser << std::endl;
    std::cout << "The length of the string is: " << inputLineByUser << std::endl;
}
