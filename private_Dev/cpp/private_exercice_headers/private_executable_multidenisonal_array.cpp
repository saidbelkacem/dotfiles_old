#include <iostream>
// #include <cmath>
#include <vector>
// #include <string>

int main(int argc, const char **argv)
{

    const int NUM_ROWS = 2;
    const int NUM_COLUMNS = 3;

    int aMyNumbers[NUM_ROWS][NUM_COLUMNS] = {{1, 2, 3}, {43, 64, 345}};

    for (int row = 0; row < NUM_ROWS; ++row)
    {
        for (int column = 0; column < NUM_COLUMNS; ++column)
        {
            std::cout << "Integer " << row << " " << column << "  "
                      << aMyNumbers[row][column] << std::endl;
        }
    }
    return 0;
}