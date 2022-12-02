#include <iostream>
#include <algorithm>
#include <vector>

int main(int argc, const char **argv)
{

    std::vector<int> vNumber = {20, 30, 40, 50};

    std::make_heap(vNumber.begin(), vNumber.end());
    for (size_t i = 0; i < vNumber.size(); i++)
    {
        std::cout << vNumber[i] << std::endl;
    }
}
