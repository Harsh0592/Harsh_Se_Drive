#include <stdio.h>
main() 
{
    int n;
    int sum = 0;
	printf("Enter a positive integer: ");
    scanf("%d", &n);
	if (n < 1) 
	{
        printf("Please enter a positive integer.\n");
    } 
	else 
	{
        for (int i = 1; i <= n; i++) 
		{
            sum += i;
        }
		printf("The summation of numbers from 1 to %d is %d.\n", n, sum);
    }
}

