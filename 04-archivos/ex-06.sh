#!/bin/bash

# Crear un script de Bash que solicite al usuario un número natural n e imprima en un archivo
# llamado “primos.txt” todos los números primos existentes hasta n.

#!/bin/bash

function es_primo() {
    local num=$1

    if [[ -z "$num" || "$num" -le 1 ]]; then
        echo "false"
        return
    fi

    for (( i = 2; i * i <= num; i++ )); do
        if (( num % i == 0 )); then
            echo "false"
            return
        fi
    done

    echo "true"
}

read -p "Ingrese un número natural: " n

if ! [[ "$n" =~ ^[0-9]+$ ]]; then
    echo "Asegúrese de ingresar un número natural (entero positivo)"
    exit 1
fi

for (( i = 2; i <= n; i++ )); do
    if [[ $(es_primo "$i") == "true" ]]; then
        echo "$i"
    fi
done
