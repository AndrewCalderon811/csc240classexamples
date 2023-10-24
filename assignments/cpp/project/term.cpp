#include "term.hpp"
#include <iostream>
#include <string>

using namespace std;

Term::Term(){
    coefficient = 0;
    variable = "";
    exponent = 0;
}

Term::Term(int coeff = 0, string var = "x", int expo = 0){
    coefficient = coeff;
    variable = var;
    exponent = expo;
}

string Term::toString(){
    string ret = to_string(coefficient) + variable + "^" + to_string(exponent);
    return ret;
}

int Term::getOrder(){
    return exponent;
}

void Term::addCoeff(int coeff){
    coefficient += coeff;
}

int Term::getCoeff(){
    return coefficient;
}