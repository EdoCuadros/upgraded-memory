---
name: Micros
class: Microcontroladores
tags: Microcontrolador, Microprocesador, Arquitecturas
---
# Microprocesador

Unión entre un sistema basado en lógica combinacional para ejecución de instrucciones(ALU) y un sistema basado en lógica secuencial para la ejecución ordenada de instrucciones fabricados con transistores de escala micrométrica.

Dicho microprocesador no puede funcionar por si solo, necesita de una memoria que provea las instrucciones y de espacio para guardar variables. También requiere de la capacidad de recibir y enviar datos del exterior(puertos).

### Desventajas
- Costoso para algunas aplicaciones y de alto consumo de energía para soluciones portátiles.

# Microcontrolador

Chip donde se tiene el microprocesador, memoria y perifericos(entradas y salidas).

### Ventajas
- Se reduce considerablemente el costo y consumo de energía

### Desventajas
- No se puede actualizar, ya que es una sola placa de silicio.

Los diseños de sistemas con microcontroladores son conocidos como **sistemas cerrados**.

## Arquitecturas

### Harvard

La memoria  se divide en dos partes, la RAM para acceso y escritura de datos y variables y la ROM para el acceso de las instrucciones.

Ejecuta instrucciones más rápido y es más flexible para hacer cambios individuales a cada memoria.

![[Pasted image 20230220192031.png]]
### Von Neumann

Se propone un solo bus de conexión y una sola unidad de memoria con la RAM y ROM compiladas.

Ocupa menos espacio que la Harvard y, por lo tanto, consume menos energía.

![[Pasted image 20230220192123.png]]

## Señal de reloj

Para el funcionamiento de un microcontrolador se necesita una señal cuadrada unipolar **positiva** de amplitud igual al voltaje de alimentación del microcontrolador y una duración de aproximadamente el 50% del ciclo de trabajo con voltaje en alto(frecuencia del oscilador).

## Ejecución de una instrucción

Con los flancos de la señal de reloj se dan ordenes a los flip flops internos permitiendo el funcionamiento de los microcontroladores.

Con cada flanco se ejecuta una acción, por lo tanto se necesitan varios flancos para realizar toda una instrucción, teniendo el siguiente orden de pasos:

**Fetch(Ciclo de búsqueda)**
- Leer instrucción
- Decodificar instrucción

**Execute**
- Ejecutar instrucción
- Disponer de resultado

Con arquitectura Harvard, al tener las memorias separadas, en el mismo flanco de reloj se puede ejecutar una instrucción y leer otra diferente:

![[Pasted image 20230220191524.png]]

Con arquitectura Von Neumann se necesitan más flancos de reloj para ejecutar las operaciones:

![[Pasted image 20230220191556.png]]
 
### Set de instrucciones

Los fabricantes acompañan la arquitectura del microcontrolador con un set de instrucciones que pueden ejecutar:
- Reduced Instruction Set Computer(RISC): Set corto de instrucciones que permite mayor rapidez en su ejecución y su aprendizaje.
- Complex Instruction Set Computer(CISC): Set  amplio de instrucciones que permite relaizar rutinas con un menor número de instrucciones.

Más información: [[024 Set de Instrucciones PIC18]]


