#!/bin/bash

# Create and start the first container
docker run -it -d --name up ubuntu:latest
docker container start up

# Create and stop the second container
docker run -it -d --name exited ubuntu:latest
docker container stop exited

# Create and pause the third container
docker run -it -d --name paused ubuntu:latest
docker container start paused
docker container pause paused

# Create and kill the fourth container
docker run -it -d --name restart ubuntu:latest
docker container restart restart 

# Create the fifth container and exit it immediately
docker run -it -d --name dead ubuntu:latest
docker container rm dead -f
