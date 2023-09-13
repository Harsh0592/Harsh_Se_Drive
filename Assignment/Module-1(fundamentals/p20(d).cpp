#include <stdio.h>
main() 
{
    int number;
    unsigned long long factorial = 1;
	printf("Enter a non-negative integer: ");
    scanf("%d", &number);
	if (number < 0) 
	{
        printf("Factorial is not defined for negative numbers.\n");
    } 
	else if (number == 0 || number == 1) 
	{
        factorial = 1;
    } 
	else 
	{
        for (int i = 2; i <= number; i++) 
		{
            factorial *= i;
        }
    }
    if (number >= 0) 
	{
        printf("The factorial of %d is %llu\n", number, factorial);
    }
}

