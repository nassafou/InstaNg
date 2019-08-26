#!/bin/bash


#########################################

# Description: déploiement à la volé de conteneur docker.

#################################################

if [ "$1" == "--create" ];then


 # Définition du nombre conteneur 
  nb_machine=1
    [ "$2" != "" ] && nb_machine=$2

 # setting min/max
  min=1
  max=0
 # récupération de l'idmax
 idmax=`sudo docker ps -a --format 'table {{.ID}} {{.Names}}' | awk -F "-" -v user=$USER '$0 ~ user"-alpine"{print $3}' | sort -r | head -1`
 # redéfinition de min et max
 min=$(($idmax + 1))
 max=$(($idmax  + $nb_machine))

 
  for i in $(seq $min $max) ; do 
  
  sudo docker run  -tid --name $USER-alpine-$i alpine:latest
 
  done      
 echo ""
   elif [ "$1" == "--drop" ];then
      nb_machine=1
      [ "$2" != "" ] && nb_machine=$2
      echo ""
      for i in $(seq 1 $nb_machine) ; do 
      echo $i
      sudo docker rm -f $USER-$i
      done
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
