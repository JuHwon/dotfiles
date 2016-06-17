#!/bin/bash

packages=`cat package_sets/* | sed -e 's/$/ \\/'`
installrecommended=`dialog --yesno 'install apt recommendation?' 6 50 || echo -n '--no-install-recommends'`
withsudo=`which sudo || echo -n ''`

e_header "Installing APT packages: ${packages[*]}"

$withsudo apt-get -y -qq install $package $installrecommended


