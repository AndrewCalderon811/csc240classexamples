/* Activity 3 - create a header file */
#include<stdio.h>
#ifndef _MYMATH_H
#include"mymath.h"
#endif
int main() {
  int radius;
  double area;
  printf("Enter the radius: ");
  scanf("%d", &radius);  
  area = PI * square(radius);
  printf ("The area of a circle with radius %d is %.2f\n", radius, area);
  return 0;
}

