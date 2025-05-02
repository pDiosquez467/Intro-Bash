#!/bin/bash

# Crear un script de Bash que imprima los primeros n números naturales. 
# Solicitar al usuario el ingreso de n.

read -p "Ingrese un número natural: " NUMERO

if ! [[ $NUMERO =~ ^[0-9]+$ ]] || [[ $NUMERO -le 0 ]]; then
    echo "Error: asegúrese de ingresar un número natural (entero positivo)."
    exit 1
fi

for (( i = 0; i <= NUMERO; i++ )); do
    echo $i
done

