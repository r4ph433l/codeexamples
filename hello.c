// hello.c
#include <stdio.h>

int main(){
	int* msg = (int*) "Hello World!\n";
	printf((char*) msg);
	return 0;
}
