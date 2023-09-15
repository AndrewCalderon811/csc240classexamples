#include <stdio.h>
#include "basiclist.h"


typedef struct {
    int x;
    int y;
} point_t;

int main(){
    
    point_t p1 = {1, 1};
    point_t p2 = {5, 8};
    point_t p3 = {1, 10};
    point_t p4 = {2, 9};
    point_t p5 = {7, 4};
    point_t p6 = {9, 4};
    point_t p7 = {20, 20};

    

    node_t* list = NULL;
    node_t* curr;

    list_add(&list, &p1);
    list_add(&list, &p2);
    list_add(&list, &p3);
    list_add(&list, &p4);
    list_add(&list, &p5);
    list_add(&list, &p6);
    list_add(&list, &p7);

    curr = list;
    while(curr != NULL){
        point_t* ptr = curr->data;
        printf("(%d, %d)\n", ptr->x, ptr->y);
        curr = curr->next;
    }
    
    
    return 1;
}