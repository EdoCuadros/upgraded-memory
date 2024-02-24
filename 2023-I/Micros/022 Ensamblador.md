---
name: Micros
class: Microcontroladores
tags: abreviaturas
---

## Definición

Lenguaje de máquina o de bajo nivel, el cual es entendido por el microcontrolador([[023 PIC18F4550]]).

## Programando con abreviaturas

Instrucciones como abreviaturas en ingles.

Instrucciones completas en [[Datasheet PIC18.pdf]].

Mnemónicos: Representación en abreviatura de inglés que el ensamblador ve como código binario.

La mayoría de las instrucciones de ensamblador ocupan 16 bits. 

|Abstracción para humano | Codificación en ensamblador| 
|------------ | ------------| 
|clrf aux1 |011010100000000 | 
|incf aux1,f | 001010100000000|

TRIS: Configura la salida
LAT: manipula el puerto de salida.
PORT: consulta entrada.

- Un puerto, varios pines
~~~

setf TRISD  ; [1]
movff PORTD,aux1   (copia todo el puerto y lo guarda en aux1)