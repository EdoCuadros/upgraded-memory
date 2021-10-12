#include <stdio.h>

main()
{
    float fahr,celcius;
    int lower,upper,step;

    lower = 0;
    upper = 300;
    step = 20;
    /* Usando while */

    fahr = lower;
    printf("Farenheit\tCelcius\n");
    while (fahr <= upper) {
        celcius = 5 * (fahr - 32) / 9;
        printf("%3.0f\t\t%6.1f\n",fahr,celcius);
        fahr = fahr + step;
    printf("---------------------------"); 
    /*Usando for*/
        for (fahr=0;fahr<=300;fahr = fahr + 20){
            printf("%3d\t%6.1f\n",fahr,5 * (fahr - 32) / 9.0);
        }

    }
}
