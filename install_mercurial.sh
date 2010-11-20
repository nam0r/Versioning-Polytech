#!/bin/bash

# Install some necessary library
sudo apt-get install python-dev
sudo apt-get install python-docutils

make
sudo make install PREFIX=/opt/mercurial/

hg debuginstall

cp .hgrc ~

hg debuginstall

hg

