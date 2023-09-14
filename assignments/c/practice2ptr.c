#include<stdio.h>
#include<stdlib.h>
#include<string.h>

/* Rewrite using a pointer to char str[] */
void array_to_ptr () { 
  char * ptr, str[ ] = "Hello World!";
  int length = 0;
  ptr = str;
  while (*ptr != '\0') {
    length++;
    ptr++;
  }
  
  printf("\nlength = %d\n", length);
}

int contains (char * str, char c) {
  while(*str != '\0'){
    if(*str == c){
      return 1;
    }
    str++;
  }
  return 0;
  
}

int * makearray(int n) {
  int * ptr, arr[n];

  ptr = malloc((sizeof(int) * n));

  if(ptr == NULL){
    printf("\nError Allocating Memory\n");
    exit(-1);
  }
  
  for(int i = 0; i < n; i++){
    arr[i] = i+1;
  }

  ptr = arr;

  return ptr;
}

int main (void) {
  printf("Question #2 - array_to_ptr:\n");
  array_to_ptr();   
  printf("\n------------------------------------\n\n");

  printf("Question #3 - contains:\n");
  printf("Test #1: ");
  if ( contains("Hello", 'e') == 1) {
    printf("The string \"Hello\" contains the character 'e'\n");
  }
  else {
    printf("The string \"Hello\" does not contain the character 'e'\n");
  }
  printf("Test #2: ");
  if ( contains("Hello", 'x') == 1) {
    printf("The string \"Hello\" contains the character 'x'\n");
  }
  else {
    printf("The string \"Hello\" does not contain the character 'x'\n");
  }
  printf("\n------------------------------------\n\n");

  printf("Question #4: - makearray:\n");
  int * arr = makearray(10);
  for (int ii=0;ii<10;ii++) {
    printf("%d ", *(arr+ii));
  }
  printf("\n");
  printf("\n------------------------------------\n\n");
  return 0;
}
