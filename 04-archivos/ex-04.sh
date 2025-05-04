#!/bin/bash

# Crear un script de Bash que reciba como parámetro los nombres de dos
# archivos y una sus contenidos en uno nuevo llamado “concatenados.txt”.

if [[ $# -ne 2 ]]; then
    echo "¿Cómo usar este script? => $0 archivo1 archivo2"
    exit 1
fi

ARCHIVO1="$1"
ARCHIVO2="$2"

if [[ ! -f "$ARCHIVO1" ]]; then
    echo "El archivo '$ARCHIVO1' no existe."
    exit 1
fi

if [[ ! -f "$ARCHIVO2" ]]; then
    echo "El archivo '$ARCHIVO2' no existe."
    exit 1
fi

cat "$ARCHIVO1" "$ARCHIVO2" > "concatenados.txt"
echo "Archivos concatenados en 'concatenados.txt'"
