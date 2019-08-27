#!/bin/bash
x=1
while true 
do 
echo $x > /var/www/html/worker2.txt
((x=x+1))
php /affichage.php
sleep 10
done
