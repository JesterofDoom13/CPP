// Practicing C++
//
#include <iostream>
#include "worker.h"

using namespace std;

Worker::Worker()
{
    cout << "Worker class member created " << endl;
    cout << "How old are you?: ";
    cin >> workerAge;
}

Worker::~Worker() {}

void Worker::greeting()
{
    cout << "Hello this is a worker\n";
    cout << "Worker's age is " << workerAge << endl;
}

void Worker::setAge(int age)
{
    workerAge = age;
}
