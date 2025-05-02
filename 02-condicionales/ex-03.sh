#!/bin/bash

# Crear un script de Bash que reciba un número entero e indique si el número
# es par o impar.

read -p "Ingrese un número entero: " NUMERO

# Verificar que se ingresó un número entero válido
if ! [[ $NUMERO =~ ^-?[0-9]+$ ]]; then
    echo "Error: debe ingresar un número entero válido."
    exit 1
fi

if [[ $(( NUMERO % 2 )) -eq 0 ]]; then
    echo "El número ingresado es PAR."
else
    echo "El número ingresado es IMPAR."
fi
