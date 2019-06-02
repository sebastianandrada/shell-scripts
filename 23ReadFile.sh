#!/bin/bash
# Programa para ejemplificar como se lee en un archivo
# author: Sebastian Andrada

echo "Leer un archivo"
cat $1
echo -e "\nAlmacenar los valores de una variable"
valorCat= `cat $1`
echo "$valorCat"

#Se utiliza la variable IFS (Internal File Separator) para evitar que los espacios en blanco al inicio al final se recortan
echo -e "\nLeer archivos linea por linea"
while IFS= read linea
do 
	echo "$linea"
done < $1

