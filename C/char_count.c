#include <stdio.h>

main()
{
    long nc;
    nc = 0;
    while (getchar() != EOF) /*Cuando solo tiene una linea el bucle no necesita las llaves */
        ++nc; /* Es más eficiente hacer la suma de esta forma */
    printf("%ld\n",nc); /*ld es para imprimir un long int */
}
