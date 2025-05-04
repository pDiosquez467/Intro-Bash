#!/bin/bash

# Crear un script de Bash que solicite al usuario un número natural n y cree
# n cantidad de archivos con los nombres archivo1, archivo2, etc.
# Escribir en todos los archivos el nombre del usuario actual.

read -p "Ingrese un número natural: " n

if ! [[ $n =~ ^[0-9]+$ ]] || [[ $n -eq 0 ]]; then
    echo "Asegúrese de ingresar un número natural (entero positivo)"
    exit 1
fi

mkdir -p "archivos"

ARCHIVOS="archivos"

for (( i = 1; i <= n; i++ )); do
    echo "$USER" > "$ARCHIVOS/archivo$i"
done
