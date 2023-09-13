#include<stdio.h>
main()
{
	float English,Maths,Science,Chemistry,Physics;
	float totalmarks,percentage;
	printf("Enter marks for English");
	scanf("%f",&English);
	printf("Enter marks for Maths");
	scanf("%f",&Maths);
	printf("Enter marks for Science");
	scanf("%f",&Science);
	printf("Enter marks for Chemistry");
	scanf("%f",&Chemistry);
	printf("Enter marks for Physics");
	scanf("%f",&Physics);
	totalmarks=English+Maths+Science+Chemistry+Physics;
	percentage=(totalmarks/500)*100;
	printf("total marks: %.2f\n",totalmarks);
	printf("percentage: %.2f%%\n",percentage);
}
