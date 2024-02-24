---
name: Control
class: Teoría de Control
tags: Error posición, error velocidad, requerimientos de estabilidad.
---
##### Requerimientos
- Sistema ==BIBO estable== (bounded input, bounded output)
- Sistema propio en lazo cerrado:
	- Orden de $N(s)$ ==menor== ==o igual== al orden de $D(s)$. $$G(s)=\frac{N(s)}{D(s)}$$
#### Estabilidad interna total
- Todas las ==funciones de transferencia== deben ser ==estables== (entradas, perturbaciones, ruido).
- Evitar ==cancelaciones polo-cero inestables==: Numerador de controlador igual que denominador de planta. **No cancelarlos**

![[Pasted image 20230320170756.png]]

- En la vida real, es ==dificil tener exactitud en los polos== (incertidumbre). Normalmente no se sabe si son exactamente iguales por lo tanto, no se deben cancelar. 


#### Desempeño en estado estacionario

- Error de estado estacionario: 
$$e_{rel}= \lim_{t\to\infty} \left| \frac{r(t)-y(t)}{a} \right| $$
<br/>
- Error de posición: Entrada ==tipo paso==: $r(t)=a$
$$e_p=|1-G_0(0)|$$
		Con $G_0(s)$:
			$$G_0(s)=\frac{\beta_ms^m+\beta{m-1}s^{m-1}+...+\beta_1s+\beta_0}{s^n+\alpha_{n-1}s^{n-1}+...+\alpha_1s+\alpha_0}$$
		Al evaluar en estado estacionario:
		$$G_0(0)=\frac{\beta_0}{\alpha_0}$$
		Si $\alpha_0=\beta_0$ entonces $e_p=0$.
		<br/>
- Error de velocidad: Entrada de ==tipo rampa==: $r(t)=at$
$$e_v=\lim_{t\to\infty} \left|(1-G_0(0))t-\frac{d}{ds}G_0(0)\right|$$	
$$e_v=\lim_{t\to\infty} \left| \left ( \frac{\alpha_0 - \beta_0}{\alpha_0} \right ) t-\frac{\alpha_0 \beta_1 - \beta_0 \alpha_1}{\alpha_0^2} \right |$$
	Por lo tanto, para obtener $e_v=k$ se requiere $\alpha_0=\beta_0$. Si son diferentes, $e_v \to\infty$.
	Para obtener $e_v=0$, se requiere $\alpha_0=\beta_0$ y $\alpha_1=\beta_1$.
<br/>

#### Desempeño en estado transitorio

Para un sistema con una planta y un controlador
Función lazo principal: $\qquad \qquad G_l=C(s)G(s)$

| Tipo de sistema | Polos en origen/Integradores | $e_p$ | $e_v$ | $e_a$ |
|-----------------|------------------------------|-----|-----|-----|
| 0               | 0                            | K   | $\infty$   | $\infty$   |
| 1               | 1                            | 0   | K   | $\infty$   |
| 2               | 2                            | 0   | 0   | K   |

- Si $G_l(s)$ es ==tipo 0==:
$$G_l(s)=\frac{N_l(s)}{D_l(s)} \rightarrow D_l(0) \neq 0 $$
$$ G_o(0) = \frac{G_l(s)}{1+G_l(s)}= \frac{N_l(s)}{D_l(s) + N_l(s)} \rightarrow_{t=0} \ \neq 1$$
$$e_p \neq 1 \rightarrow e_v = \infty \rightarrow e_a = \infty$$
