
### Error de redondeo
Se produce cuando se usan números que tienen un límite de cifras significativas para representar números exactos.

$$E_{t}=V_{verdadero}-V_{aproximado}$$
Donde $E_t$ equivale al error verdadero (true). 

**No toma en cuenta el orden de la magnitud**
$$\epsilon_t =\ \frac{E_t}{V_{verdadero}}$$
Donde $\epsilon_t$ equivale al error relativo fraccional verdadero.

Estos errores solo funcionan cuando se conoce el valor verdadero.

## Errores de truncamiento

Error que resulta al usar una aproximación en lugar de un procedimiento matemático exacto. Para el término residual en una serie de Taylor se tiene:

$$R_n =\frac{f^{(n+1)}(\psi)}{(n+1)!}h^{n+1}$$  