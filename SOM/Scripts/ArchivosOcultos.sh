#!/bin/bash

#TodosLosArchivos=$(ls -A "$PWD" | wc -l)   

#ArchivosVisibles=$(ls "$PWD" | wc -l)

#$ArchivosOcultos=$((TodosLosArchivos - ArchivosVisibles))

# Con este find filtramos todos los archivos ocultos y con wc -l los contamos.
ArchivosOcultos=$(find ./.* -prune -print | wc -l)

# Ahora le quitamos dos por los directorios ./ y ../ que no los usaré como validos.
ArchivosOcultos=$((ArchivosOcultos - 2))

echo Archivos ocultos en el directorio "$PWD": "$ArchivosOcultos".