#include <iostream>
#include "worker.h"

using namespace std;

void exiter();

int main(int argc, char const *argv[]) {
    Worker john;
    john.greeting();
    john.setAge(7);
    john.greeting();
    exiter();
    return 0;
}

void exiter()
{
    cout << "Hit ENTER to close.\n";
    cin.get();
    cin.get();
}
