#include<iostream>
using namespace std;

int main()
{
    int num = 10;

    int* numptr = &num;
    int& refrence = num;


    cout << "num = " << num << endl <<
    "num Pointer = " << *numptr << endl <<
    "num Refrence = " << refrence << endl;;
    return 0;
}
// int main(){
    
//     //Static
//     static int st_memory;
//     st_memory = 0;

//     //Stack
//     int sk_memory;
//     sk_memory = 1;

//     //Heap
//     int* hp_memory = new int;
//     *hp_memory = 2;
    
    
//     return 0;
// }
