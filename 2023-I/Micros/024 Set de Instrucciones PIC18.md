---
name: Micros
class: Microcontroladores
---

Para información de [[023 PIC18F4550]]

## Clasificación
- Operación que realizan
- Modo de direccionamiento
- Espacio ocupado en memoria
- Tiempo de ejecución

## Operación

- Operaciones orientadas a byte: Realizan operaciones aritméticas, lógicas o de movimiento a un registro o variable.
- Operaciones orientadas a bit: Operan un solo bit de un registro.
- Operación de control: Consultan o manipulan los registros de la CPU a excepción del registro W.
- Operación de constantes: Utilizan una constante para su ejecución.
- Operaciones de manejo de tablas: Permiten la lectura y escritura de las memorias FLASH para uso de tablas de constantes o auto programación del microcontrolador.
- Operación de set extendido: Añadidas para realizar funciones especiales del microcontrolador, habilitadas previamente.

## Direccionamiento
- Inherente: Instrucciones que no tienen operandos para su ejecución.
- Inmediato: Operaciones con constantes en operaciones aritmético-lógicas.
- Directo: Operan con un registro o variable que es especificado como operando.


## Registros

- STATUS
- Memoria Caché
- Acumulador (en PIC es registro W)
- 
![[Pasted image 20230421101605.png | 500]]

- 4 ciclos de oscilación es un ciclo de bus, las instrucciones se ejecutan con ciclos de bus.