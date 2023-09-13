#!/bin/bash
# Contar archivos que hay dentro de un directorio.
# Primero tenemos que ver que estamos recibiendo un argumento.

directorio1=$1
directorio2=$2
archivos_directorio1=0
archivos_directorio2=0

if [[ $# -eq 0 ]]; then
  echo NO HAS PASADO NINGÚN DIRECTORIO COMO ARGUMENTO.
else
# Hacemos un for para sumar todos los archivos que hay dentro del directorio1.
  for archivos in "$directorio1"/*.*; do
    ((archivos_directorio1++))
  done;
# Hacemos otro for para sumar todos los archivos que hay dentro del directorio2.
  for archivos in "$directorio2"/*.*; do
    ((archivos_directorio2++))
  done;

# Con el resultado de la cantidad de archivos que hay en cada directorio los evaluamos a ver cual es mayor.
  if [[ $archivos_directorio1 -eq $archivos_directorio2 ]]; then
    echo "$directorio1 contiene la misma cantidad de archivos que $directorio2."
  elif [[ $archivos_directorio1 -gt $archivos_directorio2 ]]; then
    echo "$directorio1 tiene más archivos que $directorio2."
  else
    echo "$directorio2 tiene más archivos que $directorio1."
  fi
fi

