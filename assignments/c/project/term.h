#ifndef TERM_H
#define TERM_H

typedef struct term {
    int coefficient;
    char var;
    int exponent;
} term_t;

//Forward Decalrations
char * term_to_string(const term_t * term);

#endif