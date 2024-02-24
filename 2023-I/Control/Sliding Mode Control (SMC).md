---
name: Control
class: Teoría de Control
---

## Control Independiente de Eslabones

La estructura básica para control independiente es:

![[Pasted image 20231030154746.png]]

- Problema de control: 
	- Seguimiento de referencia.
	- Rechazo de perturbaciones.
- La idea general es controlar únicamente el actuador relacionado con la posición de una de las articulaciones.
### Control de servomotores DC

Esquema electromecánico de un motor DC de imán permanente en el estator.

![[Pasted image 20231030155052.png]]

Se plantean las ecuaciones (eléctrica y mecánica):

$$ V = R_aI_a + \frac{d(i_a)}{dt}L_a + V_b $$
$$ \tau_m = J_m \ddot{\theta} + B\dot{\theta} + \tau_l $$
- V: Voltaje de alimentación del motor.
- $V_b$: Voltaje contra-electromotriz.
- $J_m$: Inercia del rotor del motor.
- B: Coeficiente de fricción viscosa del motor.
- $\tau_l$: Torque (variable) de carga externo.

**Modelo dinámico del sistema**

$$ \frac{\theta_m}{V} = \frac{K_m}{s[(Ls+R)(J_ms+B_m)+K_bK_m]}$$

- Generalmente se supone que la constante eléctrica es mucho más rápida que la mecánica, por lo que **se desprecia la inductancia L**.

$$ \frac{\theta_m}{V} \approx \frac{K_m/R}{s[J_ms+(B_m+K_bK_m/R)]} = \frac{K_r}{s[J_rs+B_r]} $$

### Seguimiento de "Punto Fijo"

- Se asume referencia constante (set-point tracking). Para un manipulador de n-articulaciones:
$$r_i=(q_i^d,\dot{q_i^d})\ \ \  i=[1,2,...,n]$$
- $q_i^d$ es constante y $\dot{q_i^d} = 0$.

**Restricciones**
- Saturación de voltaje de alimentación, de torque o de corriente.
- Flexibilidad en los acoples, limitando el ancho de banda del sistema de control.

### Diseño en Espacio de Estados

Los controladores _PD/PID_ pueden ser adecuados para aplicaciones donde la flexibilidad de los eslabones es despreciable y la saturación leve.

El mayor inconveniente en SS es que la **ley de control es función de todos los estados del sistema**, lo que muchas veces es altamente costoso o físicamente imposible.

Para eso se recure a *Observadores de Estado*, siendo el más conocido el *Filtro de Kallman*.

- Sistema de motor DC expresado en variables de estado:$$x_1=\theta_l\ , \ x_2 =\dot{\theta_l}\ ,\ x_3=\theta_m\ ,\ x_4 = \dot{\theta_m}$$
 - $\theta_l$: Ángulo de la carga.
 - $\theta_m$: Ángulo del motor.


## Control Multivariable y Dinámica Inversa

El esquema de dinánica inversa es un caso especial de linealización por retroalimentación (*feedback linearization*).
