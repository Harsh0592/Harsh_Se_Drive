#include<stdio.h>
main(){
	int i=0,j=0;
	for(i=1;i<6;i++){
		for(j=1;j<=i;j++){
			printf("%d",i*i);
		}
		printf("\n");
	}
}
