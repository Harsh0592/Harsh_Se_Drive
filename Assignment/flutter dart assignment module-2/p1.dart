// ignore: unused_import
import 'dart:io';

void main()
{
  int year;
  stdout.write("Enter year:");
  year = int.parse(stdin.readLineSync()!);
  if(year % 4 ==0 && year % 100 !=0 || year % 400==0)
	{
		print("LEAP YEAR");
	}
	else
	{
		print("COMMON YEAR");
	}
}