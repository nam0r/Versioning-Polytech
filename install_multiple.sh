#!/bin/bash

sudo mkdir /var/www/cgi-hg

cd mercurial*/

# Copier hgwebdir.cgi (ancien nom) dans le repertoire accedé par apache
# Le fichier cgi pointe vers le dossier repos (grace au fichier config).
sudo cp hgweb.cgi /var/www/cgi-hg/index.cgi

# Rendre executable
sudo chmod +x /var/www/cgi-hg/index.cgi

# Placer le fichier de config a la racine des repos (peut etre n'importe ou car ecrit en dur dans hgwebdir.cgi)
sudo cp hgweb.config /opt/mercurial/repos/



