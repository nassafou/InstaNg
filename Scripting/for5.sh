#!/bin/sh
 nom=`sudo cat /etc/passwd | awk -F ":" '{print $1}'`
#nom=home

for params in $nom
do 
 # echo "Les utilistateurs sont :" $paramsa
   echo "affiche :  $params"
done
