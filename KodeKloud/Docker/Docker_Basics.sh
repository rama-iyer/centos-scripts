# check the version of docker
sudo docker version

# whalesat cowsay
sudo docker run docker/whalesay cowsay Hello-World!

# Start a container
sudo docker run nginx

# List running containers
docker ps

# List all containers including recently exited containers
docker ps -a

# Stop a container that is running
docker stop amazing_agnesi

# Remove / delete a container
docker rm amazing_agnesi

# List docker images
docker images

# Remove / delete a docker images (You need to delete all depended containers before deleting an image)
docker rmi nginx

# Download a docker image but not runn it
docker pull nginx

# Run a docker container in the foreground without exiting
docker run nginx

# Run a docker container in the "detached mode" or in the background
docker run -d nginx

# Attach and get to the console of the running docker container
# CONTAINER ID   IMAGE             COMMAND                  CREATED          STATUS                      PORTS     NAMES
# 8eaeeb5fcb4a   nginx             "/docker-entrypoint.…"   12 seconds ago   Up 11 seconds               80/tcp    elastic_torvalds
docker attach 8eaee

# Run the latest version of a container (when a tag is not speified, it assumes the latest version and applies the :latest tag by default)
docker run -d redis

# Run the a particular version of a container (using a tag)
docker run -d redis:4.0

# Run docker normally
docker run kodekloud/simple-prompt-docker

# run docker in interactive mode
docker run -i kodekloud/simple-prompt-docker

# run docker in interactive mode with terminal attached to docker
docker run -it kodekloud/simple-prompt-docker

# Port-mapping
docker run kodekloud/webapp
#Status: Downloaded newer image for kodekloud/webapp:latest
# * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
# Map Port 85 on Local host to port 5000 of docker container
docker run -p 85:5000 kodekloud/webapp
# Map Port 80 on Local host to port 8080 of docker container
docker run -p 80:8080 kodekloud/simple-webapp
# Map port 3306 of localhost to 3306 of docker container
docker run -p 3306:3306 mysql

# Volume mapping
docker run -v /opt/DockerData:/var/lib/mysql mysql

# inspect a container
docker inspect sleepy_leavitt

# view the logs of a container
docker logs sleepy_leavitt

# Environment variables
# -e use environment variable
docker run -e APP_COLOR=blue -p 86:8080 kodekloud/simple-webapp

# use inspect to check env variables
docker inspect kind_gagarin

# Creating image
# Methods for deploying a flask web app
# OS - Ubuntu
# Update apt repo
# Install dependencies using apt
# Install Python dependencies using pip
# Copy source code to /opt folder
# Run the web server using "flask" command
# Same process but using Docker
# Create a Docker file

# <INSTRUCTION> <ARGUMENT>
# Must starts with FROM <OS>
FROM Ubuntu

RUN apt-get update
RUN apt-get install python

RUN pip install flask
RUN pip install flask-mysql

# Copy files from current directory to '/opt/source-code' in container
COPY . /opt/source-code

ENTRYPOINT FLASK_APP=/opt/source-code/app.py flask run


# Build Docker file
# Build an image from the Dockerfile in the current directory and tag the image
docker build Dockerfile -t myimage:1.0

# List all images that are locally stored with the Docker Engine
docker image ls

# List the running containers (add --all to include stopped containers)
docker container ls

# List the networks
docker network ls

# Delete all running and stopped containers
docker container rm -f $(docker ps -aq)

# Print the last 100 lines of a container’s logs docker container
logs --tail 100 web

# Purging All Unused or Dangling Images, Containers, Volumes, and Networks
# Docker provides a single command that will clean up any resources — images, containers, volumes, and networks — that are dangling (not associated with a container):
docker system prune

# To additionally remove any stopped containers and all unused images (not just dangling images), add the -a flag to the command:
docker system prune -a

# List all images
docker images -a

# Removing Docker Images
# Remove all images
docker rmi $(docker images -a -q)
