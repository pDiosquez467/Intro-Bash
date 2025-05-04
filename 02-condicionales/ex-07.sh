#!/bin/bash

# Crear un script de Bash que reciba como parámetros dos strings “usuario”
# y “contraseña ingresada” e indique si la clave ingresada es correcta o 
# incorrecta.

US="$1"
PASS="$2"

US_OK="Lio"
PASS_OK="Francia2"

if [[ "$US" == "$US_OK" && "$PASS" == "$PASS_OK" ]]; then
    echo "Bienvenido $US :)"
else
    echo "Usuario y contraseña incorrectos :("
fi
