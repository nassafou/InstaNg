#!/bin/bash


#########################################

# Description: déploiement à la volé de conteneur docker.

#################################################

if [ "$1" == "--create" ];then
 echo ""
 echo "creation encours"
  #FROM alpine:latest
  nb_machine=1
 # if [ -Z $2 ]then;
  #  $nb_machine=1
  #run=sudo docker run  -tid --name $USER-nompost alpine:latest
 # else
  #    nb_machine=$2
   #   echo " Il ya" ${nb_machine}
  #fi
   [ "$2" != "" ] && nb_machine=$2
 echo "creation de :" ${nb_machine}
  for i in $(seq 1  $nb_machine) ; do 
  echo $i
  sudo docker run  -tid --name $USER-$i alpine:latest
 
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
