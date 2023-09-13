#include <stdio.h>
main() 
{
    int choice;
    float area;

    printf("Area Calculation Menu:\n");
    printf("1. Triangle\n");
    printf("2. Rectangle\n");
    printf("3. Circle\n");
    printf("Enter your choice (1/2/3): ");
    scanf("%d", &choice);

    if (choice == 1)
	 {
        float base, height;
        printf("Enter the base length of the triangle: ");
        scanf("%f", &base);
        printf("Enter the height of the triangle: ");
        scanf("%f", &height);
        area = 0.5 * base * height;
        printf("The area of the triangle is: %.2f square units\n", area);
    } 
	else if (choice == 2) 
	{
        float length, width;
        printf("Enter the length of the rectangle: ");
        scanf("%f", &length);
        printf("Enter the width of the rectangle: ");
        scanf("%f", &width);
        area = length * width;
        printf("The area of the rectangle is: %.2f square units\n", area);
    } 
	else if (choice == 3) 
	{
        float radius;
        printf("Enter the radius of the circle: ");
        scanf("%f", &radius);
        area = 3.14159265359 * radius * radius;
        printf("The area of the circle is: %.2f square units\n", area);
    } 
	else 
	{
        printf("Invalid choice! Please select a valid option (1/2/3).\n");
    }
}

