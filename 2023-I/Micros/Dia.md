```mermaid
graph TD
    A(Inicio)
    B(Pin en alto)
    C(Interrupción?)
    D(Apagar señal)
    E(Reiniciar contador)
    F(Incrementar contador)
    G(Contador < 20000?)
    H(Pin en bajo)
	I(Incrementar contador)
	J(Contador < 100000?)
	
    A --> B
    B --> C
    C -->|Sí| D
    C -->|No| F
    D --> E
    E --> F
    F --> G
    G -->|No| H
    G -->|Si| B
    H --> I
    I --> J
    J -->|Sí| I
    J -->|No| B


```

## Conversor ADC

Señal análoga --> Señal discretizada
Periodo de muestreo ->Frecuencia de muestreo

Nyquist: Fs >= 2F
![[Pasted image 20230526073944.png]]

NOTA: PBADEN = OFF apaga las funciones análogas del puerto B
