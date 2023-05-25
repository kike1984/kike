#!/bin/zsh

numeroSecreto=10

echo Escribe un número del 1 al 20
read numero

if [[ -z "${numero##*[!0-9]*}" ]]; then
  echo El valor introducido no es correcto!!!
  exit
fi

if [[ $numeroSecreto -eq "$numero" ]]; then
  echo Bieeeeennnn!!! Has hacertado el número secreto!!!
  exit
fi

echo OOOOHHhh!!! No has acertado el número secreto!

if [[ $numeroSecreto -lt "$numero" ]]; then
  echo El número secreto es menor!
  exit
fi

echo El número secreto es mayor!
