## Errores de medición

- Error absoluto: Diferencia del valor medido con valor 'real'
$$ E_A = |v_m - v_r| $$
- Error relativo: Relación entre ==error absoluto== y ==valor exacto== (Porcentaje).$$ E_R = \frac{E_A}{v_r} $$
- Error sistemático: Error que aparece en todas las mediciones que se hacen de una magnitud. Generado por instrumento, operario, ambiente, etc.
- Error aleatorio: Errores ==inevitables== que surgen del proceso de medición. Se repiten en todas las mediciones.

## Clase del instrumento de medida

El ==error instrumental== se da por diferentes parámetros y procedimientos del instrumento. El máximo posible a lo largo del rango del sensor se conoce como ==error máximo permitido==. 

La clase del instrumento se determina ==dependiendo de la forma en la que se da el error máximo==. Si es relativo se expresa con un número y si es absoluto con una letra.

## Proceso de calibración

Teniendo la salida del sensor acondicionada, se necesita ==calibrar a las necesidades del objetivo==, es decir, que la salida se aproxime a la respuesta ideal.
- [[044 Características estáticas y dinámicas#^f30121|Calibración estática]]: Ingresar variable conocida y observar o almacenar respuesta manteniendo constante la entrada durante la medición.
- [[044 Características estáticas y dinámicas#^7c4bdf|Calibración dinámica]]: Determina la relación entre una entrada de un comportamiento dinámico conocido y la salida del sistema.

## Medidas de ascenso y descenso

Un ==mismo valor de entrada== puede provocar ==salidas diferentes== dependiendo del sentido en el que se modifique la entrada (creciente o decreciente).  Este error se conoce como [[Histéresis]].

![[Pasted image 20230324134612.png|center|500]]
## Deriva (Drift)

==Variación vertical de la curva de calibración== por algun efecto interno o externo al instrumento. Se calcula con la relación de salida en cero real del sensor en relación a su alcance (FSD).

## Zero Shift y ajuste de ganancia