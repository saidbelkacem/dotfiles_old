#include <iostream>
#include <string.h>
using namespace std;

class Human
{
private:
    string name;
    string dateOfBirth;
    string placeOfBirth;
    string gender;

public:
    //dedault constructor
    Human()
    {
        name = "default Name";
        dateOfBirth = "0";
        placeOfBirth = "defaultPlace";
        gender = "default Gender";
    };
    ~Human()
    {
        cout << "One object has been deconstructed"
             << "\n";
    };
    void setName(string newName)
    {
        name = newName;
    };
    const string &getHuman()
    {
        return this->dateOfBirth;
    };
};

int main()
{
    Human *pSaid = new Human();
    Human *pSaid2 = new Human();
    Human *pSaid3 = new Human();
    pSaid->setName("Hallo du\n");
    pSaid2->setName("Blb abl\n");
    cout << pSaid3->getHuman() << "\n";

    return 0;
}
