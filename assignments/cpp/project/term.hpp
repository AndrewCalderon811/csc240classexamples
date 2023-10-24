#ifndef term_H
#define term_H
#include <iostream>

using namespace std;


class Term{
    private:
        int coefficient;
        string variable;
        int exponent;
    public:
        Term();
        Term(int coeff, string var, int expo);
        string toString();
        int getOrder();
        void addCoeff(int coeff);
        int getCoeff();
};



#endif