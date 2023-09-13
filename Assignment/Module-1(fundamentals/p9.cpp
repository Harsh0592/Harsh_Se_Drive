#include<stdio.h>
main()
{
	int a,b;
	printf("Enter the number :");
	scanf("%d%d",&a,&b);
	printf("before swaping: a=%d,b=%d \n",a,b);
	a=a+b;
	b=a-b;
	a=a-b;
	printf("after swaping: a=%d,b=%d \n",a,b);
}
