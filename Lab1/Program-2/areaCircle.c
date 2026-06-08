#include<stdio.h>
#include<math.h>
#define PI 3.14

float circle_area(float r); //Function for calculating area of circle

int main(){
    float r;
    printf("Enter the radius: ");
    scanf("%f", &r);
    printf("\nArea of circle is: %f", circle_area(r));
    return 0;
}

float circle_area(float r){
    return PI*pow(r,2);
}