#include <stdio.h>
#include <stdlib.h>
#include"term.h"

char * term_to_string(const term_t* term){
    char* ret = malloc((sizeof(int) * 10) + sizeof(char));
    sprintf(ret, "%d %c ^ %d   ", term->coefficient, term->var, term->exponent);
    
    return ret;
}