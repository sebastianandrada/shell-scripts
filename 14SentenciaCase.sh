# !/bin/bash
# ejemplifico uso de sentencia case

option=""

echo "Ejemplo Sentencia case"
read -n1 -p "Indique una opcion de la a - z" option
echo -e "\n"
case $option in 
	"A") echo -e "\nOperacion guardar archivo";;
	"B") echo "Operacion eliminar archivo";;
	[C-E]) echo "No esta implementada la operacion";;
	"*") echo "Opcion Incorrecta";;
esac
