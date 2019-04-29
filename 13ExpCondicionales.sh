# !/bin/bash
# ejemplifico el uso de expresiones condicionales

edad=0
pais=""
pathFile=""

read -p "Ingrese su edad: " edad
read -p "Ingrese su pais: " pais
read -p "Ingrese el path a su archivo: " pathFile

echo -e "\nExpresiones condicionales con numeros" # -e -> para que soporte caracteres especiales
if [ $edad -lt 10 ]; then 
	echo "la persona es un niñe"
elif [ $edad -ge 10 ] && [ $edad -le 17 ]; then 
	echo "La persona se trata de un adolescente"
else
	echo "La persona es mayor de edad"
fi
#####################################################################
echo -e "\nExpresiones condicionales con cadenas"
if [ $pais = "EEUU" ]; then 
	echo "la persona es AMERICANA"
elif [ $pais = "Ecuador" ] || [ $pais = "Colombia" ]; then 
	echo "La persona es de sudamerica"
else
	echo "nacionalidad desconocida"
fi
####################################################################
echo -e "\nExpresiones condicionales con archivos"
if [ -d $pathFile ]; then #Verifica que el fichero existe y es un directorio
	echo "El directorio $pathFile existe"
else
	echo "El el fichero $pathFile no existe"
fi
