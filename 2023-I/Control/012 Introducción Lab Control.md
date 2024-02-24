---
name: Control
class: Teoría de Control
tags: 
---
# Objetivo

Se define el objetivo del controlador. Ej:
	- Posición del brazo
	- Temperatura
	- Nivel de un tanque
	- Voltaje de una línea de tensión


# Modelo

Se obtiene el modelo de la planta:
	- Función de transferencia
	- Ecuaciones diferenciales
**Identificación** de la planta

# [[013 Señales y Sistemas#^f37e8c|Referencia]]

Se define el 'set point': Valor del objetivo o valor deseado.

# Comparación

Si se tiene la posición deseada y la posición actual, se pueden comparar para obtener la señal error con ayuda de una retroalimentación.

# Medición

Para poder controlar la variable se necesita saber cuál es su valor actual con ayuda de un [[013 Señales y Sistemas#^304de0|sensor]].

# [[013 Señales y Sistemas#^28670d|Control]]

Finalmente se define la **ley de control**

# Criterios de diseño

^716a09
**Cómo se quiere llegar al objetivo**
	- Tiempo de asentamiento(ts): Rapidez
	- Sobrepico(μp)
	- Error de posición(ep): Precisión para lograr referencia

Desempeño: Asociado a [[013 Señales y Sistemas#^a7a4fd|perturbaciones]], es una señal de entrada **no controlable** y, por lo tanto, modifica la salida.

Robustes: Asociado a las incertidumbres. A mayor robustes, mayor tiempo de asentamiento de un sistema.
