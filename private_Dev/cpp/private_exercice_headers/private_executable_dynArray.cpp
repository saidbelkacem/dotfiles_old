#include <iostream>
#include <cmath>
#include <vector>
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
    char sayHello[] = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o', 'r', 'l', 'd', '\0'};

    std::cout << "Number of integers in array: " << dynArray.size() << std::endl;
    std::cout << "Enter a new Numer: " << std::endl;
    // std::cin >> newValue;
    dynArray.push_back(newValue);
    std::cout << "Number of integers in array: " << dynArray.size() << std::endl;
    std::cout << sayHello << std::endl;
    sayHello[5] = '\0';
    std::cout << sayHello << std::endl;
}
