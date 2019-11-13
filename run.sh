#!/bin/bash

# install nginx
sudo apt-get update -y
sudo apt-get install -y nginx

# clear environment
sudo rm -rf /etc/nginx/sites-enabled/*
sudo rm -rf /usr/share/nginx/html/*

# build page
PROJECT_DIR="nginx-resume"
sudo git clone https://github.com/shiboyan/nginx_resume.git
sudo cp ./${PROJECT_DIR}/hello.conf /etc/nginx/sites-enabled/
sudo cp ./${PROJECT_DIR}/index.html /usr/share/nginx/html/
sudo cp -r ./${PROJECT_DIR}/index_files /usr/share/nginx/html/

# restart service
sudo service nginx restart  
