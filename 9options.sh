# ! /bin/bash
# ejemplificar como se realiza el paso de opciones con o sin parametros

echo "Options program"
echo "option 1 sended: $1"
echo "option 1 sended: $2"
echo "option sended: $*"
echo -e "\n"
echo "Recuperar valores"
while [ -n "$1" ]
do
case "$1" in 
-a) echo "-a used option";;
-b) echo "-b used option";;
-c) echo "-c used option";;
*) echo "$1 is not a option";;
esac
shift
done
