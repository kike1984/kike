#!/bin/bash

echo "Escribe los números que deseas calcular."
read -r numerosrecibidos

echo "Si quieres sumarlos escribe 1 y si quieres multiplicar escribe 2."
read  -r operador

# Variable que defino para sumar los numeros dados.
sumar=0

# Variable que defino para usar com valor 1.
uno=1

# Variable que defino para usar como valor 2
dos=2

# Código de control de errores.
# Controlar errores como no pasar argumentos o pasar argumentos incorrectos.

if [[ -z "${numerosrecibidos##*[!0-9]}" ]]; then
  echo No has pusto los valores correctos con los que operar.
  exit
elif [[ -z "$operador" ]]; then
  echo No has pasado ningun argumento para elegir operador.
  exit
elif [[ "$operador" -ne 1 ]] && [[ "$operador" -ne 2 ]]; then
  echo No has escrito los números correspondientes a los operadores.
  exit
fi


# Clacular los números dados con los operadores elegídos que son: sumar o multiplicar.

#if [ "$operador" -eq $uno ]; then
#  for datos in $numerosrecibidos; do
#    sumar=$(("$sumar + $datos"))
#  done
#  echo El resultado de sumar los números dados es: $sumar
#else
#  multiplicar=$uno
#  for datos in $numerosrecibidos; do
#    multiplicar=$(("$multiplicar * $datos"))
#  done
#  echo El resultado de multiplicar los números dados es: $multiplicar
#fi

# Pruebo a generar el condicional de arriba en formado case in asec.

case $operador in
  "$uno")
    for datos in $numerosrecibidos; do
    sumar=$(("$sumar + $datos"))
    done
    echo El resultado de sumar los números dados es: $sumar
  ;;
  "$dos")
    multiplicar=$uno
    for datos in $numerosrecibidos; do
      multiplicar=$(("$multiplicar * $datos"))
    done
    echo El resultado de multiplicar los números dados es: $multiplicar
esac