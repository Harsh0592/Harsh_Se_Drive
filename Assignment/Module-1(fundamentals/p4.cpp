#include<stdio.h>
main()
{
	double radius,area;
	const double pi=3.14;
	printf("Enter the radius of the circle:");
	scanf("%lf",&radius);
	if(radius>=0)
	{
		area = pi*radius*radius;
		printf("The area of the circle with radius %.2lf is %.22lf \n",radius,area);
	}
	else
	{
		printf("radius cannot be negative.\n");
	}
}
