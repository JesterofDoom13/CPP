#ifndef WORKER_H
#define WORKER_H

#include <iostream>

class Worker {
private:
    int workerAge;
public:
    Worker();
    ~Worker();
    void greeting();
    void setAge(int age);
};

#endif
