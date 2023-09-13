#include<stdio.h>
main()
{
	float marks[5];
	float total=0.0,percentage;
	printf("Enter marks for 5 subjects:\n");
	for(int i=0;i<5;i++)
	{
		printf("Subjects %d:",i+1);
		scanf("%f",&marks[i]);
		if(marks[i]<0 || marks[i]>100)
		{
			printf("invalid input. marks should be between 0 and 100.\n");
		}
		total+=marks[i];
	}
	percentage=(total/500)*100;
	if(percentage > 75)
	{
		printf("distinction\n");
	}
	else if(percentage > 60)
	{
		printf("first class\n");
	}
	else if(percentage > 50)
	{
		printf("second class\n");
	}
	else if(percentage > 35)
	{
		printf("pass class\n");
	}
	else
	{
		printf("fail");
	}
	
}
