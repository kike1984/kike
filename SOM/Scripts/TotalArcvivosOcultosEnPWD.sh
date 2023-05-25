#!/bin/bash

ContarOcultos=0

for archivos in .*; do
  #Excluir los directorios . y ..
  if [[ $archivos != "." && $archivos != ".." ]]; then
    #Comprobar si el archivo es oculto
    if [[ $archivos == .* ]]; then
      ((ContarOcultos++))
    fi
  fi
done

#Comprobar que es mayor que uno para imprimir la frase en plural o no del resultado.
if [[ $ContarOcultos -gt 1 ]]; then
  echo "En el directorio actual hay $ContarOcultos archivos ocultos."
else
  echo "En el directorio actual hay $ContarOcultos archivo oculto."
fi