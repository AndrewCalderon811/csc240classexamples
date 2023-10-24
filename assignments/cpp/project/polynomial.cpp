#include "polynomial.hpp"

#include <iostream>
#include <vector>

using namespace std;

Polynomial::Polynomial(){
    order = 0;
}


void Polynomial::add(Term t){
    termV.push_back(t);
    if(order < t.getOrder()){
        order = t.getOrder();
    }
}

void Polynomial::print(){
    for(unsigned int i = 0; i < termV.size(); i++){
        cout << termV.at(i).toString();
        if(i < termV.size() - 1){
            cout << " + ";
        }
    }
    cout << endl;;
}

Polynomial Polynomial::combineLikeTerms(){
    Polynomial retPoly;
    
    for(int i = 0; i <= order; i++){
        int coeff = 0;
        for(unsigned int j = 0; j < termV.size(); j++){
            if(termV.at(j).getOrder() == i){
                coeff += termV.at(j).getCoeff();
            }
        }
        Term newTerm(coeff, "x", i);
        retPoly.add(newTerm);
    }
    
    
    return retPoly;
}
