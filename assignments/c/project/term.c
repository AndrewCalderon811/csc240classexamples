#include <stdio.h>
#include"term.h"

char * term_to_string(const term_t* term){
    char* ret;
    char arr[3];

    arr[0] = term->coefficient;
    arr[1] = term->var;
    arr[2] = term->exponent;
    ret = arr;
    return ret;
}