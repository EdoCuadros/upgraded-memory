
Rutinas de código que se ejecutan cuando un evento ha sucedido, similar a una ==condición if==.

Rutina de código que atiende la interrupción se conoce como ISR (Interrupt Service Routine).

Cuando una interrupción ocurre, ==primero se termina de ejecutar la instrucción actual==.

En ensamblador, una ISR se ubica en una parte especial del código y debe culminar con refie o rti.

En C, una ISR es una ==función con sintaxis especial== para que sea entendida por el compilador.

![[Pasted image 20230406160646.png|center|]]

- Interrupción temporizador 2 (TMR0) : Cuenta frecuencia de bus
IF : Interrupt flag
IE : Interrupt enable
IP : Interrupt priority


Habilitación global y local para que funcione la interrupción.


