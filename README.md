[![Docker Automated build](https://img.shields.io/docker/automated/telfix/python-service.svg)](https://hub.docker.com/r/telfix/python-service/builds/) 
![Docker Build Status](https://img.shields.io/docker/build/telfix/python-service.svg)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# python-service
Super simple python service template

# Why?
If you need to develop a containerized python service you do not have to reinvent the bootstrap of everything.
This template is based on the official python docker images and adds some small but nice features and plays well with other telfix containers.

## It supports:
- autoreload if enabled (development usage)
- automatic install requirements from requirements.txt if enabled (development usage)
- dummy example app (minimal web server example) to prevent container stops
- connect your app volume with https://github.com/telfix/easy-passwordless-ssh-rsync if you want to develop inside the container via sshfs
- connect your app volume with https://github.com/telfix/pywebdav if you want to develop inside the container via webdav (eg. windows workstation) 

## Environment Variables
- AUTORELOAD=true/false
- AUTOREQUIREMENTS=true/false

# Example usage:

## Plain docker:
Start the python daemon with autoreload and make it accessible via ssh://*docker-host-ip*:5555
```
docker run -ti -p '5555:80' -e AUTORELOAD=true telfix/python-service
```

## docker-compose:
docker-compose.yml
```
version: '3'
services:
  python-service:
    image: telfix/python-service
    env:
    - AUTORELOAD: true
    ports:
      - 5555:80
```
start with
```
docker-compose up python-service
```

# Who?
Hi, we are TELFIX GmbH, a small Software Company located in Vienna, Austria. We love to develop things for the Web, IOT, Cryptocurrencies, Telecommunications, Embedded Systems, Mobile Phones, Games and much much more. We dont feel really nerdy or geeky, but others are saying we are :)
