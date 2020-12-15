#!/bin/bash

apt update && apt install -y nginx

systemctl enable nginx

mv config/config /etc/nginx/sites-available/default

systemctl restart nginx
