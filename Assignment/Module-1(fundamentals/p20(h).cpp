#include <stdio.h>
main() 
{
    int n, max, num;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    printf("Enter number 1: ");
    scanf("%d", &max);
    for (int i = 2; i <= n; i++) 
	{
        printf("Enter number %d: ", i);
        scanf("%d", &num);
		if (num > max) 
		{
            max = num;
        }
    }
	printf("The maximum number is: %d\n", max);
}

