#!/bin/sh

while true 
do
     echo "Chaine ? \c"
     read a
     if [ -z "$a" ]
     then
            break
     fi
done

