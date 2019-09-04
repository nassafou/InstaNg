#!/bin/sh
if test $# -ne 0
then 
       echo "$# parametres en ligne de commande" 
else 
       echo "Aucun parametre; set alfred oscar romeo zoulou"
       set alfred oscar romeo zoulou
fi

echo "Nombre de parametres : $#"
echo "Parametres : 1=$1 2=$2 3=$3 4=$4"
echo "Liste : $*"
