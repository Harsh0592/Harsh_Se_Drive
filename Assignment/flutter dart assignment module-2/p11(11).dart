// ignore: unused_import
import 'dart:io';
void main(){
	int i=1,j=1,k=1;
	for(i=5;i>0;i--){
		for(j=1;j<=5;j++){
			if(j>=i){
				stdout.write("$k");
				stdout.write(" ");
			}
			else{
				stdout.write(" ");
			}
		}
		k++;
		stdout.write("\n");
	}
}