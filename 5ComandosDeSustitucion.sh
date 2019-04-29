# ! /bin/bash
#Programa para ejecutar comandos dentro del programa y almacenar una variable para 
#su posterior utlizacion

ubicacionActual=`pwd`
infokernel=$(uname -a)

echo "La ubicacion actual es la siguiente : $ubicacionActual"
echo "Inforacion del kernel: $infokernel" 


#110 101 010
#rw- r-x -w-
#r- x   r--
#r-x -w- r--
#r