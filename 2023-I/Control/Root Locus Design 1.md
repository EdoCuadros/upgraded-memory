## Desarrollo

Se tiene un controlador proporcional con una ganancia K, por lo tanto el objetivo es encontrar los valores para los cuales el sistema es estable. Para esto se usa el método Root Locus.

Se tiene una planta cuya función de transferencia es
$$G(s) = \frac{1}{(s-0.5)(s+4)(s+5)} $$
La cual se sabe que se de orden 3, al tener 3 polos diferentes.



Se comenzó de manera visual, haciendo uso de la función 'rlocus' de MATLAB se presenta un diagrama de polos y ceros en función de la ganancia. Este diagrama se puede ver en la siguiente figura.
 <br/>

![[Diagrama.jpg]]
 <br/>
Con este diagrama se pueden ver los polos en lazo abierto con una x y cada línea es la tendencia de cada polo a medida que se aumenta el valor de K desde 0 hasta infinito. Ya que se necesita tener un sistema estable, solo sirven los valores de K que generen polos en la parte negativa del eje real, por lo tanto, visualmente se verifican los cortes con el eje imaginario.

Como se puede ver, el polo en rojo tiende a menos infinito real por lo tanto desestabilizará el sistema, por lo que se deben verificar los polos en azul y verde.
 <br/>
 
![[RootLocusDesign1.jpg]]

Como se puede ver en el origen, el valor de la ganancia es 10, por lo tanto ese es el menor valor que puede tomar el controlador proporcional, al ir aumentando el valor de K, el polo verde y azul se vuelven complejos conjugados del otro y su corte en el eje y da aproximadamente un valor de ganancia de 143.

De esta forma se puede concluir que el rango de valores que puede adoptar K es $[10,143]$ . 