# ORACLE LABS
## This source code contains:
# Dockerfile
# Directory Files (for static files)
## To run use this Code
# Build Docker Image
docker build . -t oraclelabs:${tag}
# Run Container 
docker run --privileged --name oraclelabs -p 443:443 oraclelabs:${tag} /sbin/init
# Acces to the container 
docker exec -it oraclelabs /bin/bash
