# Demandware deployment Dockerfile

# source of the image
FROM node:12

# install packages and update
RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y rsync zip

# fetch our deploy script and make it executable
RUN mkdir -p dw && cd dw && wget https://raw.githubusercontent.com/z1haze/dw-deploy/master/dwdeploy.sh
RUN chmod +x /dw/dwdeploy.sh

# this command will confirm node was installed correctly, and fail out if the command fails
CMD [ "node" ]