#!/bin/bash

sudo apt update && apt install -y nginx

curl -o wiki https://gist.githubusercontent.com/vascoalramos/724966925cb2e17b370dc12e77e1cd17/raw/698da8bdc8680892b2e1930def192eba3748a334/wiki.nginx
mv wiki /etc/nginx/sites-available/default

systemctl enable nginx
systemctl restart nginx
