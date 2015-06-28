#include <stdio.h>
#include <stdlib.h>

int main(void) {
    FILE *fp;
    char str[20];
    unsigned int i;

    sleep(10);

    fp = fopen("./TEXT.txt", "r");
    if (fp == NULL) {
        return -1;
    }

    fgets(str, 20, fp);
    puts(str);

    return 0;
}
