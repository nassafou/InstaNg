#!/bin/sh
if [ $# -ne 0 ]
then 
      echo "$# parametres en ligne de commande "
else 
      echo "Aucun parametre; set alfred oscar romeo zoulou"
      exit 1
fi


case $1 in 
         a*) 
             echo "Commence par a "
             ;;
         b*)
            echo "commence par b"
             ;;
         fic[123])
             echo "fic1 fic2 ou fic3"
         *)  
             echo "Commence par n\'importe"
             ;;
esac
exit 0

