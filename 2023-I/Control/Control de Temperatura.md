---
name: Control
class: Teoría de Control
---
1. Definir hardware
2. Modelo matemático y [[012 Introducción Lab Control#^716a09|parámetros de diseño]]
3. Diseñar en Matlab
4. Simular controlador


-----
Escoger punto de operación: Valor cercano a la referencia escogida y el valor de entrada con la que se quisiera llegar a esar referencia (depende de las perturbaciones). 

### Ecuaciones auxiliares

$$V_{auxiliar}= V- V_{operacion}$$	$$\omega_{auxiliar}=\omega - \omega_{operacion}$$
- Tanto $V_{operacion}$ como $\omega_{operacion}$ son los valores **constantes** del voltaje y velocidad en el punto de operación. 

- Para escoger el voltaje de operación se necesita conocer las perturbaciones que tendrá la planta.
- Temperatura esperada: 37.5 - 37.7
- Se escoge voltaje de operación.
- Se escoge temperatura cercana a punto de operación. 

## Identificación de la planta

La entrada a la planta debe ser una variable que se puede modificar directamente (Voltaje). 
La planta (sistema térmico) es lento, puede llegar a tener una respuesta en minutos, mientras que un sistema eléctrico tiene respuestas menores a milisegundos, por lo tanto, la ==dinámica dominante está dada por sistema térmico==. El transitorio no se afecta.

Sistema eléctrico tiene polos muy alejados del origen, lo que provoca que sea muy rápido. Se puede modelar como una ganancia DC. Se hace cuando se tiene un sistema más rápido que otro (10 veces mínimo).

Se necesita un sistema adicional que permita pasar de voltaje a temperatura.

El modelamiento del sistema eléctrico se hace mediante una identificación experimental de los componentes internos.
Ej: Para identificar experimentalmente el valor de una resistencia, se le aplica un voltaje, se mide la corriente y haciendo uso de la ley de Ohm se verifica el valor de resistencia. **Debe ser un sistema de naturaleza estable**.

## Calibración de la planta

### Dinámica de la planta en punto de operación

- Se aplica un voltaje a la planta
$$\hat{V}=V_{op}+V_{id}$$
$V_{id}$ : Voltaje de identificación

Por lo tanto, la salida de la planta es:
$$\hat{\theta}=\theta_{op}+\theta_{id}$$
- Señal de identificación debe ser cercana al punto de operación
- La señal de identificación debe permitir ver las características importantes del sistema (orden, ganancia, sobrepico, tiempo de asentamiento). Una buena opción es usar un paso como señal de identificación.



