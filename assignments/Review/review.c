#include <stdio.h>


void func(int x){
    printf("[");
    for(int i = 1; i <= x; i++){
        printf("%d ", i);
    }
    printf("]\n");
}


int main(void){
    int a = 10;
    int b = 5;
    int c = a + b;

    func(a);
    func(c);

    return 0;
}



int my_strlen()