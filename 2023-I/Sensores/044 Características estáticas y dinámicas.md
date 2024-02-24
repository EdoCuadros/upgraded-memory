---
name: Sensores
class: Sensores y Actuadores
aliases: 
---
## Características estáticas de los instrumentos

- Rango de medida: Intervalo de límite inferior y superior de medida.
- Alcance: Magnitud del rango o barrido a escala completa.
- [[046 Bases de probabilidad y estadística#^8dac42|Exactitud]]: Medida de qué tan correcto es el experimento.
- Precisión: Cuantificación a ==qué tan cercanos son los resultados entre ellos==, sin hacer referencia a lo correcto del valor real.
- Resolución: ==Cambio== más pequeño que puede ser determinado o medido.
- Sensibilidad: Razón entre el incremento de la lectura y el incremento de la variable que lo ocasiona, después de alcanzar el reposo.
- Repetitividad: ==Variación== de las mediciones obtenidas con un sistema de medición.
- Linealidad: Indica si el sistema de medición tiene la misma ==exactitud== para todos los valores de referencia.
- [[Histéresis]]: ==Máxima diferencia== entre los valores indicados para un ==mismo valor== de variable medida cuando se recorre toda la escala en los dos sentidos.

## Características dinámicas de los instrumentos

Representadas con una función de transferencia $G(s)$,==comportamiento entrada/salida==.
Para identificar la transformada de Fourier de $G(s)$ se usan señales de prueba como escalón, impulso o rampa.

- Tiempo de subida
- Constante de tiempo
- TIempo muerto
- Frecuencia de respuesta
- Coeficiente de amortiguamiento 
- Frecuencia natural
- TIempo de seteo
- Porcentaje de sobrepico
- Frecuencia de Cut-Off

## Calibración

Aplicar un valor conocido de la variable de entrada con el propósito de ==observar la salida==.

Al aplicar un rango, se crea una ==curva directa de calibración==, la cual puede usarse como parte del desarrollo de una [[046 Bases de probabilidad y estadística#^04fc56|relación funcional]].

- Calibración estática: Solo importan el valor de entrada y salida. ^f30121
- Calibración dinámica: Son usadas ==variables variantes en tiempo y frecuencia==. Normalmente usadas: escalón, impulso, rampa. ^7c4bdf

## Objetivo de calibración

- Sensibilidad estática: ==Pendiente de la curva de calibración== en cualquier punto de la misma.
- Rango: Sin extrapolar lograr ==determinar los límites máximo y mínimo==, ampliandolos de forma sucesiva.
- Exactitud
- Aplicar una calibración aleatoria: Aplicar ==valores aleatorios de entrada==, ayudará a ==eliminar los efectos de histéresis==, reduce el [[046 Bases de probabilidad y estadística#^2629fa|error bias]], permitiendo la obtención de linealidad, sensibilidad y de cero.