---
name: Control
class: Teoría de Control
---
![[Pasted image 20230321144312.png]]
Se debe cumplir $e_p < 0.05$, por lo tanto, $K_p > 7.6$ .La simulación a continuación confirma el error de 5% para un controlador proporcional con $K_p=7.6$.

![[Step_Response_P.png|center|300]]

Por otro lado, el error de velocidad en estado estacionario es infinito, puesto que un controlador proporcional no puede llegar a tener error posicional 0 en la práctica.

![[Ramp_Response_P.png|center|300]]

En la imágen se puede ver cómo cada vez que pasa el tiempo se va alejando más la salida de la entrada. Se procede a usar un controlador PI con $K_p=1$ y $K_i=1$.
![[Step_Response_PI.png|center|300]]

Al tener $e_p = 0$, se obtiene $e_v=40\%$, pudiendo verificar este valor con la gráfica de la simulación.
![[Ramp_Response_PI.png|center|300]]

![[Diff_PI.png|center|]]
En el caso de un controlador PI, si es posible alcanzar un error de velocidad igual a 0, pero para eso, tanto el coeficiente con $s^0$ como el coeficiente con $s$ del numerador y denominador de la función de transferencia deben cumplir con: $\alpha_0 = \beta_0$ y $\alpha_1 = \beta_1$, con los parámetros actuales, esto último no se cumple. Al aumentar los los valores de $K_p$ y $K_i$ del controlador, se reduce el error de velocidad.
<br/>
![[Ramp_Response_PI_1.png|center|300]]

También se puede concluir que, al disminuir estos valores, se aumenta el error.
![[Ramp_Response_PI_0.2_0.05.png|center|300]]
