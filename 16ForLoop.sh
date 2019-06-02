#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteracion for
# author: Sebastian Andrada

arregloNumbers=(1 2 3 4 5 6)

echo "Iterar en la lista de numeros"
for num in ${arregloNumbers[*]}
do 
   echo "numero: $num"
done

echo "Iterar en la lista de cadenas"
for nom in "Sebastian" "Daniela" "Daeneris" "Carl"
do 
   echo "Nombre: $nom"
done

echo "Iterar en Archivos"
for fil in *
do 
   echo "Nombre archivo: $fil"
done

echo "Iterar utilizando un comando"
for fil in  $(ls)
do 
   echo "Nombre archivo: $fil"
done 

echo "Iterar utilizando el formato tradicional"
for ((i = 1; i<10; i++))
do
  echo "Numero: $i"
done

