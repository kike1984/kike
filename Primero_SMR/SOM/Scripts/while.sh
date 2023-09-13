#!/bin/bash

resta=1

numero1=$1
resultado=$numero1

while [[ "$resultado" -ge "$resta" ]]; do
	((resultado--))
	echo "$resultado"
	sleep 1
done
