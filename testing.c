#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char *argv[]) {
  char besede[100][50];
  char beseda[50];

  int max_index = 99;

  for (int i = 0; i < 100; i++) {
    scanf("%s", beseda);
    if (!strcmp(beseda, "EOF")) {
      max_index = i - 1;
      break;
    }
    strcpy(besede[i], beseda);
  }

  printf("\nObratni vrstni red:\n");
  for (int i = max_index; i >= 0; i--) {
    printf("%s\n", besede[i]);
  }

  return 0;
}
