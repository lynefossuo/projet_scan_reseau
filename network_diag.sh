#!/bin/bash

INTERNET="8.8.8.8"
HOST="10.0.2.15"

echo "Vérifions la connectivité à internet"

ping -c 4 $INTERNET

RESULTAT=$(echo $?)

if [ $RESULTAT -eq "0" ]; then
	echo "Internet passe"
else
	echo "Internet ne passe pas"

fi 


echo "Scannons les ports du ouverts"

nmap -F $HOST

echo "Affichons les interfaces réseaux"

ip a
