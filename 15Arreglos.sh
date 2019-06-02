#!/bin/bash
# Programa para ejemplificar el uso de arreglos
# author: Sebastian Andrada

arregloNumbers=(1 2 3 4 5 6)
arregloString=(Sebastian, Lucia, Marco, Silvia)
arregloRange=({A..Z} {10..20})

#Print all values
echo "Arreglo de numeros: ${arregloNumbers[*]}"
echo "Arreglo de strings: ${arregloString[*]}"
echo "Arreglo de rangos: ${arregloRange[*]}"

#Print array's size
echo "Tamaño Arreglo de numeros: ${#arregloNumbers[*]}"
echo "Tamaño Arreglo de cadenas: ${#arregloString[*]}"
echo "Arreglo de rangos: ${#arregloRange[*]}"

#Print the 3rd number array's position, range
echo "Posicion 3 Arreglo de numeros: ${arregloNumbers[3]}"
echo "Posicion Arreglo de strings: ${arregloString[3]}"
echo "Posicion Arreglo de rangos: ${arregloRange[3]}"

#add and remove values in an array
arregloNumbers[7]=20
unset arregloNumbers[0]
echo "cambiando valor a posicion 7 y removiendo indice 0"
echo "Arreglo de numeros: ${arregloNumbers[*]}"
echo "Tamaño arreglo de numeros: ${#arregloNumbers[*]}"
