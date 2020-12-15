#!/bin/bash

sudo apt update && apt install -y nginx

curl -o wiki https://raw.githubusercontent.com/vascoalramos/wiki-deployment/main/deployment/web/wiki?token=AJGNZAEOT3XWJP2HEPHQUE274IGFI
mv wiki /etc/nginx/sites-available/default

systemctl enable nginx
systemctl restart nginx
