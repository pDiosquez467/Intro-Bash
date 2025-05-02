#!/bin/bash

# Crear un script de Bash que solicite el ingreso de un número n y que luego
# calcule su factorial.

read -p "Ingrese un número natural: " NUMERO

if ! [[ $NUMERO =~ ^[0-9]+$ ]] || [[ $NUMERO -lt 0 ]]; then
	echo "Asegúrese de ingresar un número natural (entero positivo)."
	exit 1 
fi

FACT=1

for (( i = 1; i <= NUMERO; i++ )); do
	FACT=$(( FACT * i ))
done 

echo "El factorial de $NUMERO es: $FACT"
