// hello.c
#include <stdio.h>

int main() {
  char* msg = “Hello World”;
  int   n   = 3;

  char xclam[n];
  for (int i = 0; i < n; i++) {
    xclam[i] = ‘!’;
  }
  printf(“%s%s\n”, msg, xclam);
  return 0;
}
