#include <iostream>
#include <vector>

using namespace std;

class Grades{
    private : 
        vector<int> grade;
    public : 
        void add(int);
        void print();
};

void Grades::add(int x){
    grade.push_back(x);
}

void Grades::print(){
    cout << "Grades: " << endl;;
    for(unsigned int i = 0; i < grade.size(); i++){
        cout << grade.at(i) << "   ";
    }
}

int main(){


    Grades vec;

    vec.add(95);
    vec.add(56);
    vec.add(78);
    vec.add(15);
    vec.add(100);

    vec.print();

    return 0;
}