#!/bin/bash 

# vim powered :p
# Thibault Duponchelle pour Project Versioning


# Ce script a pour but de montrer l'utilisation des parametres de la ligne de commande. 

# Tester s'il reste un parametre à tester :
while  [ "$1" != "" ]; do 
		echo "Parametre : $1"	
		# Ensuite on décale tous les paramètres d'un cran vers le bas !
		# Shift est super utile en bash !!!
		shift 
done


