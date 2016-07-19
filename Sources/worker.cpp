//
//  worker.cpp
//  CPP
//
//  Created by Nicholas Porter on 07/01/2016.
//
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
