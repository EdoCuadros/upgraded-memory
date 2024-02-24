- Condición de inicio: Contador <- A
- Condición de paso: Contador --
- Condición de parada: Hasta cuando se repite el código. Contador =0.

![[Pasted image 20230406153355.png|center|300]]

El proceso se ejecuta ==A veces==.

![[Pasted image 20230406153724.png|center|250]]
El proceso se ejecuta ==A por B por C veces==.


- Retardo empieza desde llamado, demora 2 ciclos de bus.
- Hacer retardo decrementando variable. Usar decfsz para preguntar si es 0.
~~~
Retardo
	movlw A    [1]
	movwf aux1 [1]
	movlw B    [1]
	movwf aux2 [1]
AuxRetardo
	decfsz aux1,f [1][3]    (skip if zero)
	goto AuxRetardo [2]  (ocupa 32 bits) (3 ciclos de bus)
	movlw A  [1]
	movwf aux1 [1]
	decfsz aux2,f [1][3]   (ciclo anidado)
	goto AuxRetardo [2]
	return [2]

~~~

Ecuación de retardo:  $8 +(3*A+5)*B$
- decfsz tarda 3 ciclos si la condición se cumple, si no tarda 1.