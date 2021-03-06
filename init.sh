#!/bin/bash

echo "Check composer.phar..."
if [ ! -f "./composer.phar" ]; then
  echo "Download composer.phar..."
  php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" 1>/dev/null
  php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" 1>/dev/null
  php composer-setup.php 1>/dev/null
  php -r "unlink('composer-setup.php');" 1>/dev/null
fi

echo -n "Check vendor/autoload.php..."
if [ ! -f "./vendor/autoload.php" ]; then
  echo "Composer install..."
  php ./composer.phar install
fi
