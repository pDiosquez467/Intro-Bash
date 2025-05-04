#!/bin/bash

# Crear un script de Bash que reciba números y los ordene de menor a mayor
# Imprimir por pantalla los números ordenados (la cantidad de números puede
# variar).

FILE="ordenados.txt"

touch $FILE

for numero in "$@"; do
	echo $numero >> $FILE
done

sort -n $FILE | cat

rm $FILE
