#include <stdio.h>

main()
{
    int c;
    c = getchar();
    while (c != EOF) {  /* EOF == End of file. Tiene valor -1 debido a que cuando se llega al final del archivo, el programa arroja ese dato */
        putchar(c);
        c = getchar();
    }
}


