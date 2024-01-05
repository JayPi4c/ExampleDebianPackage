#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv){
    printf("Hello World!\nTutorial by www.sindastra.de\nimplemented by JayPi4c\n");
    printf("More info.\n");
    for(int i = 0; i < argc; i++){
        printf("argv[%d]: %s\n", i, argv[i]);
    }
    return EXIT_SUCCESS;
}