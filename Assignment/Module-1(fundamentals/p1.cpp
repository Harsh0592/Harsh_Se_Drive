#include<stdio.h>  
main()  
{
  char name[20];
  int day,month,year;  
  int age;
  char address[50];
  printf("Enter Your Name : "); 
  scanf("%s",&name);  
  printf("Your name is : %s", name); 
  printf("Enter the day :");
  scanf("%d",&day);
  printf("Enter the month :");
  scanf("%d",&month);
  printf("Enter the year :");
  scanf("%d",&year);
  printf("the DOB is :%d/%d/%d",day,month,year);  
  printf("Enter your age :");
  scanf("%d",&age);
  printf("your age is : %d",age);
  printf("Enter Your address : "); 
  scanf("%s",&address);  
  printf("Your address is : %s", address);
}
