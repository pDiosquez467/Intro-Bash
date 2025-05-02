#!/bin/bash

# Crear un script de Bash que solicite al usuario el nombre y el apellido de un alumno,
# los almacene en variables y luego imprima su nombre completo en formato "Apellido, Nombre".

read -p "Ingrese el nombre del alumno: " NOMBRE
read -p "Ingrese el apellido del alumno: " APELLIDO

echo "Hola $APELLIDO, $NOMBRE!"
