#!/bin/ksh
PS3="Votre choix :"
echo "Quelle donnee ?"
select repose in Jules Romain Francois quitte
do
      if [[ "$repose" = "quitte" ]]
      then
             break
      fi
      echo "Vous avez choisi $repose"
done
echo "Au revoir."
exit 0

