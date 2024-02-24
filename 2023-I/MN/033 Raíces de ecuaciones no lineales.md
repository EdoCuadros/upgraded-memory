# Métodos abiertos

## Método del punto fijo
-  Sea $f(x)=0$
- Definif funciones equivalentes $x=g_1(x)$ , $x=g_2(x)$.
- Definir valor inicial $x_0$
- Evaluar $g_1(x_0) = x_1$
- Si resultado es raíz, terminar método.
- Si no, evaluar $g_1(x_1) = x_2$ . Repetir hasta cumplir error.

#### Criterio de convergencia
- Si $|g'(x_0)|<1$ puede ser raíz.
- Si $|g'(x_0)|\geq 1$, **NO** es raíz.

## Método de Newton Raphson

- Criterio de convergencia cuadrático.
- El método tiene problemas cuando la función tiene raíces multiples o cuando la ==derivada de la función es compleja==.
- Se utiliza la fórmula de Newton-Raphson hasta minimizar  el error.
$$ x_{i+1} = x_i - \frac{f(x_i)}{f'(x_i)}$$

## Método de la secante

- Se aproxima la derivada de la función con la siguiente diferencia.
$$ f'(x_i) \cong \frac{(x_{i-1}) - f(x_i)}{x_{i-1}-x_i} $$
- Esta aproximación se sustituye en la ecuación de Newton-Raphson.
$$ x_{i+1} = x_i - \frac{f(x_i)(x_{i-1}-x_i)}{f(x_{i-1})-f(x_i)} $$
- El método requiere dos valores iniciales.


# Métodos cerrados
<br/>

## Método de bisección

- Se localiza un intervalo de $f(x)$ en el que la función cambie de signo, siendo el intervalo $[x_l,x_u]$ (se debe cumplir $f(x_l)f(x_u)<0$).
- Se hace una aproximación $$x_r = \frac{x_l + x_u}{2} $$
- Si $f(x_l)f(x_r)<0$ la raíz en intervalo inferior. Se elige $x_u = x_r$.
- Si $f(x_l)f(x_r) >0$ la ráiz en intervalo superior. Se elige $x_l = x_r$.
- Si $f(x_l)f(x_r) >0$ la raíz es $x_r$ y el proceso termina.

### Cálculo de error
$$ \varepsilon_a = \left | \frac{x_r^{nuevo}-x_r^{anterior}}{x_r^{nuevo}}100\% \right |$$

## Método de la falsa posición

- Es una alternativa de la bisección basada en ==visualización gráfica==.
- Se hace una ==aproximación lineal== de la función real.
- Semejante a la bisección pero ==reduce la cantidad de iteraciones==.
![[Pasted image 20230326185419.png| center|300 ]]

$$ x_r = x_u \frac{f(x_u)(x_l-x_u)}{f(x_l)-f(x_u)} $$