#!/bin/zsh

numero=$1
#resultado=$numero
resta=1

#echo "$numero"
#while [[ $resultado -ge $resta ]]; do
#  resultado=$((resultado-resta))
#  sleep 1
#  echo $resultado
#done

echo "$numero"
while [[ $numero -ge $resta ]]; do
  sleep 1
  expr "$numero" - "$resta"
  ((resta++))
done