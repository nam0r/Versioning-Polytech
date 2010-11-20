#!/bin/bash 

# vim powered ;P
# Versioning project

# On utilisera la lecture d'un fichier ligne par ligne pour generer les repos

base="/opt/mercurial/repo"
if [ "$1" == "base" ]; then
	shift 
	base=$1
	shift
fi 

echo $base
while  read line; do
		
		echo "Creation du repo : $line"
		mkdir $base/$line

		cd $base/$line
		hg init
		hg add
		
		cp /opt/mercurial/hgrc $base/$line/.hg/
		sudo chown www-data:www-data -R $base/$line 
		cd ..	
		echo "$line=$base/$line" >> $base/hgweb.config
		shift 
done < repolist


