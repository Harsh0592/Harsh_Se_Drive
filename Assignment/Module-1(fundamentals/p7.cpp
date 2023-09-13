#include <stdio.h>
main() 
{
    float celsius, fahrenheit;
    printf("Enter temperature in degrees Celsius: ");
    scanf("%f", &celsius);
    fahrenheit = (celsius * 9 / 5) + 32;
    printf("%.2f degrees Celsius is equal to %.2f degrees Fahrenheit.\n", celsius, fahrenheit);

}
