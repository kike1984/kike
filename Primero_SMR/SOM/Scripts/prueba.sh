#!/bin/bash
# Haz un script que reciba dos números y te diga cuál es el mayor de ellos.
valores_aceptados='^[0-9]+$'
primer_numero=$1
segundo_numero=$2

# Validación de los argumentos recibidos
if ! [[ $segundo_numero =~ $valores_aceptados || $segundo_numero =~ $valores_aceptados ]]; then
  echo Error!!! No has introducido valores correctos a comparar.
  exit 1
fi

# Comparar cual de los dos números dados es mayor.
if [[ "$primer_numero" -eq "$segundo_numero" ]]; then
  echo Los números dados son iguales.
elif [[ "$primer_numero" -gt "$segundo_numero" ]]; then
  echo "$primer_numero" es mayor que "$segundo_numero".
else
  echo "$segundo_numero" es mayor que "$primer_numero".
fi
