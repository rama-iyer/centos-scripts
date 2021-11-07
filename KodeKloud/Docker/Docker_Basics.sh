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

docker run mmumshad/simple-webapp-docker
