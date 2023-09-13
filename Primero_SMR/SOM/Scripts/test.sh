#!/bin/bash
#
#
primer_numero=$1
segundo_numero=$2

# Validar los valores dados
valores_aceptados='^[0-9]+$'

if ! [[ $primer_numero =~ $valores_aceptados || $segundo_numero =~ $valores_aceptados ]]; then
  echo Los valores proporcionados no son correctos.
  exit 1
fi

if [[ $primer_numero -eq $segundo_numero ]]; then
  echo "$primer_numero" son iguales "$segundo_numero".
elif [[ $primer_numero -gt $segundo_numero ]]; then
  echo "$primer_numero" es mayor que "$segundo_numero".
else
  echo "$segundo_numero" es mayor que "$primer_numero".
fi


