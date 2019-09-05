#!/bin/sh

while
#nom != [1..9]
 
echo "Merci de saisir un nom" 
read nom

 [ -z "$nom" ]
do 
#echo "vous avez saisi: $nom"
 
echo "erreur de saisi"
done

echo "vous avez saisi: $nom"
#echo "erreur de saisi"
