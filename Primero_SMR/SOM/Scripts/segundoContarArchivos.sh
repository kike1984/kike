#!/bin/bash

directorio1=$1
directorio2=$2
total_de_argumentos=$#

# Primero vemos que se le pasan como argumento dos directorios a comparar
if [[ $total_de_argumentos -ne 2 ]]; then
  echo NO HAS PASADO DOS DIRECTORIO PARA EVALUAR.
elif ! [[ -d $directorio1 || -d $directorio2 ]]; then
  echo LO QUE HAS PASADO COMO ARGUMENTO NO ES UN DIRECTORIO.
else
# contar_archivos te da un valor en número de los archivos que contien el directorio
contar_archivos1=$(find "$directorio1" -maxdepth 1 -type f | wc -l)
contar_archivos2=$(find "$directorio2" -maxdepth 1 -type f | wc -l)

  if [[ $contar_archivos1 -eq $contar_archivos2 ]]; then
    echo "El directorio $directorio1 tiene los mismos archivos que el directorio $directorio2."
  elif [[ $contar_archivos1 -gt $contar_archivos2 ]]; then
    echo "El directorio $directorio1 tiene más archivos que el directorio $directorio2."
  else
    echo "El directorio $directorio2 tiene más archivos que el directorio $directorio1."
  fi
fi
