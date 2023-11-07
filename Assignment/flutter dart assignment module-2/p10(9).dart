// ignore: unused_import
import 'dart:io';
void main() 
{
    int n;
    int sum = 0;
	stdout.write("Enter a positive integer: ");
    n = int.parse(stdin.readLineSync()!); 
	if (n < 1) 
	{
        print("Please enter a positive integer");
    } 
	else 
	{
        for (int i = 1; i <= n; i++) 
		{
            sum += i;
        }
		print("$n,$sum");
    }
}
