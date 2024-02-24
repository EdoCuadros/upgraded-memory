flowchart LR
Start --> Stop

- Alfabetización en datos: Se pueden leer los datos y entenderlos.
- Fluidez de datos: Capacidad de crear algo con datos, no solo saber entenderlos.

**El planteamiento es muy importante**

```mermaid 
flowchart LR 
A[Alfabetización] 
B[Fluidez] 
A --> B 
```

```mermaid
flowchart LR
A(Gobernanza de datos)
B(Acceso a la información)
C(Fuente de información) -->D(Fiabilidad)
E(Gestión de datos maestros) -->F(Datos completos y precisos)
A-->B & C & E
```

**Todas las organizaciones deben tener plan de gobernanza de datos**

## Calidad de datos


```mermaid
flowchart LR
A([Calidad de datos])
B([Completitud]) --> C([Datos suficientes?]) --> E([Sirven?])
D([Coherencia]) --> F([Los datos están en otro sistema?]) & G([Es coherente la información?])
H([Validez]) --> J([Los datos cumplen con los requisitos?]) & I([Formato correcto?])
K([Precisión]) --> Q([Los datos son correctos?])
A --> B & D & H & K
```
