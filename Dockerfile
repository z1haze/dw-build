# Demandware deployment Dockerfile

# which image should we use?
FROM node:8

# install packages and update
RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y rsync zip

RUN mkdir -p dw && cd dw && wget https://raw.githubusercontent.com/z1haze/dw-deploy/master/dwdeploy.sh

# this command will confirm node was installed correctly, and fail out if the command fails
CMD [ "node" ]