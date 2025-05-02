#!/bin/bash

# Crear un script de Bash que solicite al usuario la base y la altura de un rectángulo,
# y luego calcule e imprima por pantalla su perímetro.

read -p "Ingrese la base del rectángulo: " BASE
read -p "Ingrese la altura del rectángulo: " ALTURA

PERIMETRO=$((2 * (BASE + ALTURA)))
echo "El perímetro del rectángulo es $PERIMETRO"
