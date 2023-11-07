// ignore: unused_import
import 'dart:io';
void main()
{
    int i, j;
    for(i=1;i<=5;i++)
    {
        for(j=i;j>=1;j--)
        {
            stdout.write("$j");
        }
        stdout.write("\n");
    }
}