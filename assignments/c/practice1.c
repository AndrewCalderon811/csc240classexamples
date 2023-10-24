#include<stdio.h>
#include<string.h>

/* This file will not compile until it is complete - you can comment out
 * any failing code that you haven't completed yet.
 */

int array_max(int a[], int len);
int letter_count(char a[], int len);
void printThem(int count);
int triple_it(int x);

struct practice1_t{
  char className[3];
  int classNumber;
  int classHours;
};

/* Define struct */
int main(void) {
  int nums[11] = {1, 3, 5, 7, 9, 11, 10, 8, 6, 4, 2};
  char str[] = "CSC240 Fall 2019";

  struct practice1_t structPractice = {{'C','S','C'}, 240, 70};

  printf("Class name: %s%d Totaling %d hours\n", structPractice.className, structPractice.classNumber, structPractice.classHours);

  printf("triple_it: ");
  for(int ii=0;ii<10;ii++) { 
    printf("%d ", triple_it(ii));
  }
  printf("\n");

  printf("\narray_max: %d\n", array_max(nums, 11));

  printf("\nletter_count: %d\n", letter_count(str, strlen(str)));

  printf("\nprintThem:\n");
  printThem(50);


  printf("\n");
  return 0;
}

int array_max(int a[], int len){
  int ret = 0;

  for(int i = 0; i < len; i++){
    if(ret < a[i]){
      ret = a[i];
    }
  }

  return ret;
}

int letter_count(char a[], int len){
  int ret = 0;

  for(int i = 0; i < len; i++){
    if(a[i] >= 'A' && a[i] <= 'Z'){
      ret++;
    }
    else if(a[i] >= 'a' && a[i] <= 'z'){
      ret++;
    }

  }
  
  return ret;
}

void printThem(int n){
  int count = 0;
  for(int i = 0; i < n; i++){
    if(count < 15){
      if((i % 7) != 0){
        if((i % 3) != 0){
          if((i % 5) == 0){
            //5
            printf("Five");
          }
        }
        else{
          if((i % 5) == 0){
            //15
            printf("Fifteen");
            count++;
          }
          else{
            //3
            printf("Three");
            count++;
          }
        }
      }
      else{
        printf("%d",i);
        count++;
      }
    }
    else{
      count = 0;
      printf("\n");
    }
  }
}  


int triple_it (int x) {
  return (x * 3);
}
