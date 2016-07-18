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
}
Worker::~Worker() {}

void Worker::greeting()
{
    cout << "Hello this is a worker\n";
}
