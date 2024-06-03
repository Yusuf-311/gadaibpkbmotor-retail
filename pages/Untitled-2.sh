#!/bin/bash

# list of directories
directories=(
/var/www/html/raovatquangcao.net
/var/www/html/rebellion-rugby.com
/var/www/html/ruanglaba.com
/var/www/html/sofaphuongquang.com
/var/www/html/thaiapartments.net
/var/www/html/thedatingchristian.net
/var/www/html/truebluedating.net
/var/www/html/vipessayservice.net
/var/www/html/webdatingcarrousel.net
)

# iterate over the directories
for dir in "${directories[@]}"; do
  # change to the target directory
  cd $dir

  # download wordpress
  curl -O https://wordpress.org/latest.zip

  # unzip wordpress
  unzip latest.zip

  # rename wordpress to public_html
  mv wordpress public_html

  # remove the zip file
  rm latest.zip
  
  mkdir logs
  touch logs/access.log
  touch logs/error.log
  chown -R www-data:www-data logs
done
