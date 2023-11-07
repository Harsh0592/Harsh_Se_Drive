// ignore: unused_import
import 'dart:io';
void main()
{
  int n,first=0,second=1,next;
  print("Enter the number of terms in the Fibonacci series: ");
  n = int.parse(stdin.readLineSync()!);
  print("Fibonacci Series up to terms:");
  for (int i = 0; i < n; i++) 
	{
        if (i <= 1) 
		{
            next = i;
        } 
		else 
		{
            next = first + second;
            first = second;
            second = next;
        }
        print("$next");
    }
	print("");
}