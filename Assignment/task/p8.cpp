#include <stdio.h>
main() 
{
    int num[5],i,j;
    printf("Enter 5 values:\n");
    for (int i = 0; i < 5; i++) 
	{
        printf("Enter value %d: ", i + 1);
        scanf("%d", &num[i]);
    }
    printf("\nMultiplication tables for 5:\n");
    for (int i = 0; i < 5; i++) 
	{
        printf("Table for %d:\n", num[i]);
        for (int j = 1; j <= 10; j++) 
		{
            printf("%d x %d = %d\n", num[i], j, num[i] * j);
        }
        printf("\n");
    }
}
