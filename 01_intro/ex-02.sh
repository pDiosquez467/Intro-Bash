#!/bin/bash

# Crear un script de Bash que reciba dos números e imprima por pantalla
# su suma.

read -p "Ingrese el primer número: " NUM1
read -p "Ingrese el segundo número: " NUM2

echo "La suma de los números ingresados es $((NUM1 + NUM2))"
