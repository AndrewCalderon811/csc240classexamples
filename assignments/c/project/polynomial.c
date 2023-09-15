#include "polynomial.h"
#include "term.h"
#include <stdio.h>
#include <stdlib.h>

poly_t * new_polynomial(){
    poly_t * poly = (poly_t*) malloc(sizeof(poly_t));
    poly->listTerms = NULL;
    poly->order = 0;

    return poly;
}

void print_polynomial(const poly_t * poly){
    node_t* temp = poly->listTerms;
    while(temp != NULL){
        term_t* ptr = temp->data;
        
        printf("%s", term_to_string(ptr));
        temp = temp->next;
    }

    free(temp);
}

void add_to_polynomial(poly_t * poly, const term_t * term){ 
    node_t* temp = poly->listTerms;
    list_add(&temp, (void*)term);
    poly->listTerms = temp;
    
    if(term->exponent > poly->order){
        poly->order = term->exponent;
    }
    
}

void delete_polynomial(poly_t ** poly){
    poly_t * old_front = *poly;
    node_t* temp = old_front->listTerms;
    temp->data = list_remove_first(&temp);
    free(old_front);
}

poly_t* combine_like_terms(const poly_t* poly){
    poly_t* newPoly = new_polynomial();
    node_t* temp = poly->listTerms;
    
    for(int i = 0; i <= poly->order; i++){
        int holder = 0;
        while(temp != NULL){
            term_t* ptr = temp->data;
            if(ptr->exponent == i){
                holder = holder + ptr->coefficient;
                // printf("\nadding: %d + %d\n", holder, ptr->coefficient);
            }
            temp = temp->next;
           
        }
        term_t newTerm = {holder, 'x', i};
        // printf("New Term: %d, %c, %d", newTerm.coefficient, newTerm.var, newTerm.exponent);
        
        add_to_polynomial(newPoly, &newTerm);
        // printf("New Term: %d, %c, %d", newTerm.coefficient, newTerm.var, newTerm.exponent);
        
        temp = poly->listTerms;
    }
    
    // print_polynomial(newPoly);
    return newPoly;
}