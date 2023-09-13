#include<stdio.h>
main()
{
	float base,height,area;
	printf("Enter the base length of the triangle:");
	scanf("%f",&base);
	printf("Enter the height of the triangle: ");
	scanf("%f",&height);
	area=(base*height)/2;
	printf("the area of the triangle is: %.2f square units\n",area);
}
