#!/bin/bash
# Instalador de Composer en Ubuntu
# Creador : PowerMX
# Team : ☬Δҋכяѻ١כ ༒ Ӎӟӿյςө☬
echo -e "Instalando Composer"
sudo apt update
sudo apt install php-cli unzip
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
echo -e "Composer ha sido Instalado"
