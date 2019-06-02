#!/bin/bash
# Programa para ejemplificar como se escribe un archivo
# author: Sebastian Andrada

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >> $1

#Adicion MUltilinea 
cat <<EOM >>$1
$2
EOM

