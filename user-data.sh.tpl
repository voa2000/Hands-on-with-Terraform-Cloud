#!/bin/bash

yum update -y
yum install docker -y

service docker start

docker run -d -p 2048:80 jeffhemmen/2048-pokemon
