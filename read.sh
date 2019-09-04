#!/bin/sh

echo "Continuer (O/N) ? \c"
read reponse 
echo "reponse=$reponse"
case $reponse in 
        O)
           echo "Oui, on continue"
           ;;
        N)
           echo "Non, on s'arrête "
           exit 0
           ;;
        *) echo "Erreur de saisie (O/N)"
           exit 1
           ;;
esac

echo "Vous avez continue. Tapez deux mots ou plus :\c"
read mot1 mot2
echo "mot1=$mot1\nmot2=$mot2"
exit 0

