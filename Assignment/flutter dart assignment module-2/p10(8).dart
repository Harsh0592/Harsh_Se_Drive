// ignore: unused_import
import 'dart:io';
void main() 
{
    int n, max, num;
    stdout.write("Enter the number of elements: ");
    n = int.parse(stdin.readLineSync()!);
    print("Enter number 1: ");
    max = int.parse(stdin.readLineSync()!);
    for (int i = 2; i <= n; i++) 
	{
        print("$i");
        num = int.parse(stdin.readLineSync()!);
		if (num > max) 
		{
            max = num;
        }
    }
	print("$max");
}
