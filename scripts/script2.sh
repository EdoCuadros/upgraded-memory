#!/bin/bash

error(){
    echo $1
    exit 1
}

#Comprobar que el numero de parametros es correcto
if [ $# -ne 2 ]; then   #Uso del script
    error "Uso: script prefijo ruta"
fi
#Comprobar que el directorio existe
if [ ! -d $4 ]; then   # $4 es el cuarto parametro
    error "Error el directorio no existe"
fi

for f in `ls $2`; do
    name="$2/$f"
