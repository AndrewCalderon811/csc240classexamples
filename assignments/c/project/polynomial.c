#include "polynomial.h"
#include "term.h"
#include <stdio.h>
#include <stdlib.h>

poly_t * new_polynomial(){
    poly_t * poly = (poly_t*) malloc(sizeof(poly_t));
    return poly;
}

void print_polynomial(const poly_t * poly){
    while(poly->listTerms->next != NULL){
        printf("%p", term_to_string(poly->listTerms->data));
    }
}

void add_to_polynomial(poly_t * poly, const term_t * term){ 
    node_t** nodePointer = &poly->listTerms;
    void * data = &term;
    
    list_add(nodePointer, data);
}

void delete_polynomial(poly_t ** poly){
    
}