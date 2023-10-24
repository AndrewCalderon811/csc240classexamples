#ifndef NumberList_H
#define NumberList_H
#include <iostream>
#include <vector>

using namespace std;

class NumberList{
    private:
        vector<int> list;
        unsigned int maxSize;
    public:
        NumberList(int);
        void add(int);
        void print();

        NumberList(void);

};

#endif