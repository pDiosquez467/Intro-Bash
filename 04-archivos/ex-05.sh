#!/bin/bash

# Crear un script de Bash que solicite al usuario un número natural n y 
# cree n cantidad de carpetas con los nombres carpeta1, carpeta2, etc.

read -p "Ingrese un número natural: " n

if ! [[ $n =~ ^[0-9]+$ ]] || [[ $n -le 0 ]]; then
    echo "Asegúrese de ingresar un número natural (entero positivo)"
    exit 1
fi

mkdir -p "carpetas"

for (( i = 1; i <= n; i++ )); do
    mkdir -p "carpetas/carpeta_$i"
done
