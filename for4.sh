#!/bin/sh

for params in *
do 
     echo "$params \c"
     type_fic=`ls -ld $params | cut -c1`
     case $type_fic in
             -)   echo "Fichier normal";;
             d)   echo "Repertoire";;
             
             b)   echo "Fichier bloc";;
             l)   echo "Symbolique";;
             
             c)   echo "mode caractere";;
             *)   echo "autre";;
      esac
done

