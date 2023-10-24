#include <iostream>
#include <vector>
#include "NumberList.hpp"

using namespace std;

NumberList::NumberList(int max){
    maxSize = max;
}

NumberList::NumberList(void){
    maxSize = 0;
    list.clear();
}

void NumberList::add(int x){
    if(list.size() >= maxSize){
        cout << "Error: Tried loading into full Number List" << endl;;
    }
    else{
        list.push_back(x);
    }
}

void NumberList::print(){
    cout << "Number List: " << endl;;
    for(unsigned int i = 0; i < list.size(); i++){
        cout << list.at(i) << "   ";
    }
    cout << endl << ":" << endl;;
}