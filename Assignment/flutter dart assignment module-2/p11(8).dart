// ignore: unused_import
import 'dart:io';
void main() 
{
   int n;
   stdout.write("Enter the number of rows: ");
   n = int.parse(stdin.readLineSync()!);
   int num = 1;
   for (int i = 1; i <= n; i++) 
   {
        for (int j = 1; j <= i; ++j) 
        {
            stdout.write("$num");
            ++num;
        }
        stdout.write("\n");
   }
}