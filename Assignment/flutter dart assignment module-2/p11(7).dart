// ignore: unused_import
import 'dart:io';
void main()
{
    int i, j, k, N;
	stdout.write("Enter N: ");
    N = int.parse(stdin.readLineSync()!);
	k = 1;
	for(i=1; i<=N; i++)
    {
        for(j=1; j<=i; j++)
        {
            if(k % 2 == 1)
            {
                stdout.write("1");
            }
            else
            {
                stdout.write("0");
            }

            k++;
        }

        stdout.write("\n");
    }
}