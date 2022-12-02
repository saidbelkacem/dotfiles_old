#include <iostream>
#include <cmath>
#include <vector>
#include <string>

int main()
{

    typedef struct debug
    {
        int_fast8_t hours;
        uint32_t micros;
        uint16_t seconds;
    } typedef_t;

    int myArray;

    int a = 8;
    a++;

    const char *string = "Hello";

    for (int i = 0; i < 349; i++)
    {
        const char c = string[i];
        std::cout << c << std::endl;
    }
    return 0;
}
