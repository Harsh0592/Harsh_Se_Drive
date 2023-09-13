#include<stdio.h>
main()
{
	int choice;
	float a,b,result;
	while(1)
	{
		printf("\nMenu:\n");
		printf("1. Addition\n");
		printf("2. Substraction\n");
		printf("3. Multiplication\n");
		printf("4. Division\n");
		printf("5. Exit\n");
		printf("Enter your choice(1/2/3/4/5):");
		scanf("%d",&choice);
		if(choice==5)
		{
			printf("Exiting the calculator program. \n");
			break;
		}
		printf("Enter frist number:");
		scanf("%f",&a);
		printf("Enter second number:");
		scanf("%f",&b);
		switch(choice)
		{
			case 1:
                result = a + b;
                printf("result: %.2f\n", result);
                break;
            case 2:
                result = a - b;
                printf("result: %.2f\n", result);
                break;
            case 3:
                result = a * b;
                printf("result: %.2f\n", result);
                break;
            case 4:
                if (b!= 0) 
			{
                result = a / b;
                printf("result: %.2f\n", result);
			}
			else
			{
				printf("Error: division by zero!\n");
			}
			break;
			default:
			printf("invalid choice! Please select a valid option.\n");
		}
	}
	
}

