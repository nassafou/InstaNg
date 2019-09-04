#!/bin/sh
cumul=0
compteur=0
nb_boucles=10
while [ "$compteur" -le "$nb_boucles" ]
do
     cumul=`expr $cumul + $compteur`
     echo "cumul=$cumul, boucle=$compteur"
     compteur=`expr $compteur + 1`
done

