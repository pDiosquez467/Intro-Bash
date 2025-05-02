#!/bin/bash

# Crear un script de Bash que solicite la edad del usuario y determine si
# es mayor o menor de edad.

read -p "Ingrese su edad: " EDAD

if [[ $EDAD -le 0 ]]; then
    echo "¿Está seguro de que ingresó su edad correctamente? Inténtelo de nuevo..."
    exit 1
fi

if [[ $EDAD -ge 18 ]]; then
    echo "Usted es mayor de edad."
else
    echo "Usted es menor de edad."
fi
