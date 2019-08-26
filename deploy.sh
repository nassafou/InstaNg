#!/bin/bash


#########################################

# Description: déploiement à la volé de conteneur docker.

#################################################

if [ "$1" == "--create" ];then
 echo ""
 echo "creation encours"
 echo ""
   elif [ "$1" == "--drop" ];then
      echo ""
      echo "Suppression en cours"
      echo ""
        elif [ "$1" == "--info" ];then
           echo ""
           echo "Info"
           echo ""
             elif [ "$1" == "--start" ];then
                echo
                echo "demarrer le conteneur "
                echo ""  
                  elif [ "$1" == "--ansible" ];then
                  echo
                  echo "Lancer Ansible"
                  echo

else
echo "

Options:
       - --create : lancer 
       - --drop : supprimer
"
fi
