#ifndef POLYNOMIAL_H
#define POLYNOMIAL_H
#include "basiclist.h"
#include "term.h"

typedef struct {
    node_t * listTerms;
    int order;
} poly_t;

//Forward declarations
poly_t * new_polynomial();
void print_polynomial(const poly_t * poly);
void add_to_polynomial(poly_t * poly, const term_t * term);
void delete_polynomial(poly_t ** poly);

#endif