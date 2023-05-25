#!/bin/zsh

primerNumero=$1
segundoNumero=$2

if [ $primerNumero -gt $segundoNumero ]; then
  echo "El número más grande es $primerNumero."
  exit
fi

if [ $primerNumero -lt $segundoNumero ]; then
  echo "El número más grande es $segundoNumero."
  exit
fi
echo "Los números son iguales."