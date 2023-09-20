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
    node_t* temp = (node_t*) malloc(sizeof(node_t));
    temp = poly->listTerms;
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
    
    for(int i = 0; i <= poly->order; i++){
        node_t* temp = poly->listTerms;
        int holder = 0;
        while(temp != NULL){
            term_t* ptr = temp->data;
            if(ptr->exponent == i){
                holder = holder + ptr->coefficient;
            }
            temp = temp->next;
        }
        term_t* newTerm = (term_t*)malloc(sizeof(term_t));
        newTerm->coefficient = holder;
        newTerm->var = 'x';
        newTerm->exponent = i;
               
        add_to_polynomial(newPoly, newTerm);     
    }
    
    return newPoly;
}