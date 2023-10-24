/*
Write a C program that prompts the user for a number less than 10.  
Then prompt the user for that many numbers, adding each number to an array
(you can use 10 as the size of the array and only use the slots you need).  
Print the even numbers from the array on a single line.  

Write a C program that does the following:
Create an array of 10 integers
Prompt the user for a number less than 10
Create a for loop that prompts the user for that many integers, adding them to the array
Prints the even numbers in the array
*/

#include<stdio.h>

int main(){
    int userInt = 0;

    printf("Please enter a number between 1 and 10:\n");
    scanf("%d", &userInt);
    
    int array[userInt];

    for(int i = 0; i < userInt; i++){
        printf("Please enter any number:\n");
        scanf("%d", &array[i]);
    }

    for(int i = 0; i < userInt; i++){
        if(array[i]%2 == 0){
            printf("%d",array[i]);
            printf("  ");
        }
    }



    return 0;
}
