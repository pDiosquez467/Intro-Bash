#!/bin/bash

while true; do
    read -p "Ingrese un número par: " numero

    if ! [[ "$numero" =~ ^-?[0-9]+$ ]]; then
        echo "La entrada no es un número entero válido."
        continue
    fi

    if (( numero % 2 == 0 )); then
        echo "Ingresaste el $numero :)"
        break
    else
        echo "El $numero es IMPAR :(. Inténtelo de nuevo."
    fi
done

