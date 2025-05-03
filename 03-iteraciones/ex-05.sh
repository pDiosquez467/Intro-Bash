#!/bin/bash

# Crear un script de Bash que reciba números naturales y que luego los
# imprima por pantalla (la cantidad de números ingresados puede variar).

while ((1)); do 
	read -p "Ingrese un número natural (Corta con -1): " NUMERO

	if ! [[ $NUMERO =~ ^-?[0-9]+$ ]]; then
		echo "Error: Debe ingresar un número entero."
		continue
	fi

	if [[ $NUMERO -eq -1 ]]; then
		echo "Fin del programa."
		break
	elif [[ $NUMERO -gt 0 ]]; then
		echo "Ingresaste el $NUMERO :)"
	else
		echo "El número debe ser natural (entero positivo) :("
		echo "Intentalo de nuevo."
	fi 
done
 
