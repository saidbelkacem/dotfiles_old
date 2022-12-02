#include <iostream>
// #include <cmath>
#include <vector>
// #include <string>

int main()
{
    //Polymorphism

    struct sSomeBaseObject
    {
        virtual const char *IdentiyYorself()
        {
            return "BaseObject";
        }
    };
    struct sSomeSubOjectA : public sSomeBaseObject
    {
        const char *IdentiyYorself()
        {
            return "SubObject A";
        }
    };
    struct sSomeSubOjectB : public sSomeBaseObject
    {
        const char *IdentiyYorself()
        {
            return "SubObject B";
        }
    };
    sSomeBaseObject ob_base;
    sSomeSubOjectA ob_A;
    sSomeSubOjectA ob_B;

    // std::vector<sSomeBaseObject *> vSomeVector;

    // vSomeVector.push_back(new sSomeBaseObject);
    // vSomeVector.push_back(new sSomeSubOjectB);
    // vSomeVector.push_back(new sSomeSubOjectA);
    // vSomeVector.push_back(new sSomeSubOjectA);
    // vSomeVector.push_back(new sSomeSubOjectA);

    // for (auto &a : vSomeVector)
    // {
    //     std::cout << a->IdentiyYorself() << std::endl;
    // }
    // for (auto &a : vSomeVector)
    // {
    //     delete a;
    // }
    // vSomeVector.clear();

    sSomeBaseObject **pSomeArray = new sSomeBaseObject *[5];

    pSomeArray[0] = new sSomeBaseObject();
    pSomeArray[1] = new sSomeSubOjectB();
    pSomeArray[2] = new sSomeSubOjectA();
    pSomeArray[3] = new sSomeSubOjectA();
    pSomeArray[4] = new sSomeSubOjectA();

    for (int i = 0; i < 5; i++)
    {
        std::cout << pSomeArray[i]->IdentiyYorself() << std::endl;
    }
    switch (*pSomeArray[0]->IdentiyYorself())
    {
    case true:
        std::cout << "/* message */" << std::endl;
        break;

    default:
        break;
    }
}

// // Does not work
// sSomeBaseObject objects[10];
// objects[3] = sSomeSubOjectA();

// for (int i = 0; i < 10; i++)
// {
//     std::cout << objects[i].IdentiyYorself() << std::endl;
// }
// int someArray[10] = {1000, 1, 2, 3, 4000, 5, 6, 7, 8, 9};

// int *locationPointer0 = &someArray[0];

// for (int i = 0; i < 10; i++)
// {
//     std::cout << (*someArray + i) << std::endl;
// }
// std::cout << *someArray + 1 << std::endl;

// return 0;u