#include<stdio.h>
main()
{
	int a,b,c,max;
	printf("Enter three integers\n");
	scanf("%d %d %d",&a,&b,&c);
	max=(a>b)?((a>c)?a:c):((b>c)?b:c);
	printf("Maximum Number is = %d\n",max);
}
