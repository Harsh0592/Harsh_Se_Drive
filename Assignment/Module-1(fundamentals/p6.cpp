#include<stdio.h>
main()
{
	float principal,rate,time,simpleinterest;
	printf("Enter principal amount:");
	scanf("%f",&principal);
	printf("Enter rate of interest:");
	scanf("%f",&rate);
	printf("Enter time (in years):");
	scanf("%f",&time);
	simpleinterest=(principal*rate*time)/100;
	printf("Simple Interest = %.2f\n",simpleinterest);
}
