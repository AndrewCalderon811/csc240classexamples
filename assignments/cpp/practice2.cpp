#include<iostream>

using namespace std;


class DynamicArray {
    private:
        int* arrptr;
        int length;
    public: 
    //Constructor
    DynamicArray(int x){
        length = x;
        arrptr = new int[x];
    }
    void fill_array(int);
    void print_array();

    //Destructor
    DynamicArray(void){
        delete(arrptr);
        arrptr = nullptr;
        length = 0;
    }

};

void DynamicArray::fill_array(int num){
    for(int i = 0; i < length; i++){
        arrptr[i] = num+i;
    }
}

void DynamicArray::print_array(){
    for(int i = 0; i < length; i++){
        cout << arrptr[i] << endl;;
    }
}

int main()
{
    DynamicArray a(9);
    a.fill_array(1);   /* fills array with consecutive #’s */
    a.print_array();
}
