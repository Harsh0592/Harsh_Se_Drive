#include<stdio.h>
main()
{
	int arr[2][2],arr1[2][2],i,j,add[i][j];
	for(i=0;i<2;i++)
	{
		for(j=0;j<2;j++)
		{
			printf("enter the values [%d][%d]",i,j);
			scanf("%d",&arr[i][j]);
		}
	}
	for(i=0;i<2;i++)
	{
		for(j=0;j<2;j++)
		{
			printf("%d ",arr[i][j]);
		}
		printf("\n");
	}
	
		for(i=0;i<2;i++)
	{
		for(j=0;j<2;j++)
		{
			printf("enter the second values [%d][%d]",i,j);
			scanf("%d",&arr1[i][j]);
		}
	}
	
	
	
	for(i=0;i<2;i++)
	{
		for(j=0;j<2;j++)
		{
			printf("%d ",arr1[i][j]);
		}
		printf("\n");
	}
	printf("\n-----------------------------------------------------------------------------------------\n");
	printf("Resultant matrix is as follows\n");
for(i=0;i<2;i++)
{
for(j=0;j<2;j++)
{
	add[i][j]=arr[i][j]*arr1[i][j];
printf("%d ",add[i][j]);
}
printf("\n");
}
}
