#!/bin/bash

# Crear un script de Bash que le solicite al usuario el ingreso de un número
# e indicar si el número es mayor, menor o igual a 0. Imprimir por pantalla.

read -p "Ingrese un número: " NUMERO

if [[ $NUMERO -eq 0 ]]; then
    echo "El número ingresado es igual a cero."
elif [[ $NUMERO -gt 0 ]]; then
    echo "El número ingresado es mayor que cero."
else
    echo "El número ingresado es menor que cero."
fi
