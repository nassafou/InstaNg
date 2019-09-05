#!/bin/sh
echo "avant"
set alfred oscar romeo zoulou
echo "Nombre de parametres : $#"
echo "Parametres : 1=$1 2=$2 3=$3 4=$4 "
echo "Liste: $* "
shift
echo "apres shift"
echo "Nombre de parametres : $#"
echo "Parametres : 1=$1 2=$2 3=$3 4=$4 "
echo "Liste: $* "
