#include <iostream>
// #include <cmath>
#include <vector>
// #include <string>

int main(int argc, const char **argv)
{
    const int NUM_ROWS = 2;
    const int NUM_COLUMN = 3;

    int myArray[NUM_ROWS][NUM_COLUMN] = {{1, 2, 3},
                                         {4, 5, 6}};

    for (int i = 0; i < NUM_ROWS; i++)
    {
        for (int y = 0; y < NUM_COLUMN; y++)
        {
            std::cout << myArray[NUM_ROWS][NUM_COLUMN] << std::endl;
        }
    }

    return 0;
}