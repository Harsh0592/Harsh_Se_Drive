// ignore: unused_import
import 'dart:io';
void main()
{
    int i,j;
    for(i=1;i<=5;i++)
    {
        for(j=5;j>i;j--)
        {
          stdout.write(" ");
        }
        for(j=1;j<=i;j++)
        {
          stdout.write("$j");
        }
        stdout.write("\n");
    }
}