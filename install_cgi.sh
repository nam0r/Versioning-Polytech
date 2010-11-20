#!/bin/bash

sudo mkdir /var/www/cgi-hg

cd mercurial*/

sudo cp hgweb.cgi /var/www/cgi-hg/index.cgi

sudo chmod +x /var/www/cgi-hg/index.cgi
