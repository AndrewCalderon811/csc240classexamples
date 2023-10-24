#ifndef polynomial_H
#define polynomial_H
#include <iostream>
#include <vector>
#include "term.hpp"

using namespace std;

class Polynomial{
    private:
        vector<Term> termV;
        int order;
        
    public: 
        Polynomial();
        void add(Term);
        void print();
        Polynomial combineLikeTerms();
};




#endif