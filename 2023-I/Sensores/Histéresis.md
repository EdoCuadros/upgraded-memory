---
name: Sensores
class: Sensores y Actuadores
aliases: histéresis
---
- ==Máxima diferencia en todos los puntos de calibración==, calculada entre los valores en ascenso y descenso en el rango, el cual se reporta como %FSO (Full operating scale).
- La histéresis ==depende de las entradas anteriores a cada punto==, por lo que es diferente si para un mismo valor se va hasta la FSO o no. Será inferior si no llega al máximo del rango o FSO.
- La histéresis es estática a cada punto de entrada. Debe dejarse estabilizar adecuadamente en la salida. La fricción y la inercia se pueden indicar o acumular con la histéresis, **NO CONTABILIZARLAS**.
Ecuaciones:
$$ H = |y_{asc} - y_{desc}| $$
$$ histeresis(\%) = \frac{H}{FSD}*100$$
$$FSO = |y_{max} - y_{min}| = |FSD - y_{min}|$$
