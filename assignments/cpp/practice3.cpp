#include <iostream>
#include <vector>
#include "NumberList.hpp"

using namespace std;

int main(){

    NumberList list1(5);
    NumberList list2(5);

    for(int i = 0; i < 5; i++){
        list1.add(i);
        list2.add(i*3);
    }

    list1.print();
    list2.print();
    

    return 0;
}