#!/usr/bin/env bash

#@echo off

close_safely(){
	nginx -s stop
	exit
}

trap close_safely INT

# setup docker images
docker compose up &

#install and copy files to correct directories
apt-get install -y nginx
cp ./nginx/nginx.conf /etc/nginx/nginx.conf

nginx &

wait
