#!/bin/bash 

# vim powered 
# Thibault Duponchelle pour Versioning project

# Ici il faut passer les noms de repo a la ligne de commande

base="/opt/mercurial/repo"

if [ "$1" == "base" ]; then
	shift 
	base=$1
	shift
fi 

echo $base
while  [ "$1" != "" ] ; do
		echo "Creation du repo : $1"
		mkdir $base/$1

		cd $base/$1
		hg init
		hg add
		
		cp /opt/mercurial/hgrc $base/$1/.hg/
		sudo chown www-data:www-data -R $base/$1 
		cd ..	
		echo "$1=$base/$1" >> $base/hgweb.config
		shift 
done


