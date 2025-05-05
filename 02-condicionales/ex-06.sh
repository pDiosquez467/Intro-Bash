#!/bin/bash

# Crear un script de Bash que realice las 4 operaciones básicas (suma, resta,
# multiplicación y división) a dos números enteros ingresados por el usuario.
# Crear una función para cada una de las operaciones.

function suma() {
    local res=$(( $1 + $2 ))
    echo $res
}

function resta() {
    local res=$(( $1 - $2 ))
    echo $res
}

function mult() {
    local res=$(( $1 * $2 ))
    echo $res
}

function div() {
    if [[ $2 -eq 0 ]]; then
        return 1
    fi
    local res=$(( $1 / $2 ))
    echo $res
}

read -p "Ingrese un número: " num1
if ! [[ $num1 =~ ^-?[0-9]+$ ]]; then
    echo "Asegúrese de ingresar un número. Intente de nuevo :("
    exit 1
fi

read -p "Ingrese otro número: " num2
if ! [[ $num2 =~ ^-?[0-9]+$ ]]; then
    echo "Asegúrese de ingresar un número. Intente de nuevo :("
    exit 1
fi

echo "La suma de los números ingresados es: $(suma $num1 $num2)"
echo "La resta de los números ingresados es: $(resta $num1 $num2)"
echo "El producto de los números ingresados es: $(mult $num1 $num2)"

div_result=$(div $num1 $num2)
if [[ $? -eq 0 ]]; then
    echo "El cociente de los números ingresados es: $div_result"
else
	echo "No se puede dividir por cero :("
fi

