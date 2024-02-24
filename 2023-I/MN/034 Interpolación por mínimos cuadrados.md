## Regresión lineal

El objetivo es ==ajustar una línea recta (aproximación) a un conjunto de puntos (observaciones)==.
$$ e = y - a_o - a_1x $$
- e : Error entre la aproximación y los datos reales.
- $a_0$ : Corte con eje y.
- $a_1$ : Pendiente.
- $y$ : Valor verdadero.

### Solución forma matricial:

<br/>
$$\begin{bmatrix}
\sum 1 & \sum x_k\\ 
\sum x_k & \sum x_k^2
\end{bmatrix}
\begin{bmatrix}
a_0\\a_1 
\end{bmatrix}
= 
\begin{bmatrix}
\sum y_k\\ \sum y_kx_k 
\end{bmatrix}$$

<br/>
==Todas las sumatorias van de 1 a n==.
### Solución forma ecuación

$$ a_1 = \frac{n\sum x_i y_i-\sum x_i \sum y_i}{n\sum x_i^2-(\sum x_i)^2} $$
$$ a_0 = \bar{y_i} - a_1 \bar{x_i} $$
## Regresión polinomial


$$ \sum_{i=1}^{m}  | p(x_i) - f(x_i) | = \sum_{i=1}^{m} d_i$$
- $p(x_i)$ : Aproximación.
- $f(x_i)$ : Función tabulada (valores discretos).

## Aproximación potencial

$$ y  = Ax^m $$
<br/>
### Para m conocida
$$ A = \frac{\sum_{k=1}^{n} f(x_k)(x_k)^m}{\sum_{k=1}^{n} x_k^{2m}} $$
<br/>
## Aproximación exponencial
<br/>
$$ y = Ce^{Ax} $$
