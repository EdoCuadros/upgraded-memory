---
name: Sensores
class: Sensores y Actuadores
---
## Según principio de funcionamiento

- Activos o generadores(Self Generating): La variable a medir proporciona la energía necesaria para la generación de la señal eléctrica de salida. ==Piezoelectricos  y termoelectricos==.
- Pasivos o moduladores(Modulating): La variable a medir se limita a modificar algunos de sus parámetros eléctricos, como la resistencia o capacitancia.

## Según tipo de señal eléctrica que generan

- Analógicos: Señales pueden tomar cualquier valor de un rango, **información en amplitud**.
	- Tienen problemas de ruido y distorsión, en especial para largas distancias.

- Digitales: Solo puede tomar valores dentro de un conjunto finito de niveles en un intervalo.
	- Las más conocidas son las señales binarias.
	- **Paralelo**:Varias señales se transmiten para tener un determinado valor en cada instante de tiempo.
	- **Serie**: Se transmite sólo una secuencia de datos que cambia en el tiempo.
		
	```mermaid
		flowchart TB
		A(Variable física a medir) --> B(Elemento sensor)
		subgraph ide1 [Sensor digital]
		B -- Señal analógica --> C(Circuito de acondicionamiento) --> D(Conversor analógico/digital)
		end
		D -- n --> E(Señal discreta)
	```


