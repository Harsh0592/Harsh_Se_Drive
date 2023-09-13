#include<stdio.h>
main()
{
	double num;
	printf("Enter a number:");
	scanf("%lf",&num);
	if(num<=0.0)
	{
		if(num==0.0)
		printf("you entered 0.");
		else
		printf("you entered a negative number.");
	}
	else
	printf("you entered a positive number.");
}
