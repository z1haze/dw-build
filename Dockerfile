# Demandware deployment Dockerfile

# which image should we use?
FROM node:8

# install packages and update
RUN apt-get update \
&& apt-get upgrade -y \
&& apt-get install -y rsync zip

# enter the node shell so the bitbucket.yml pipeline can execute its node scripts
CMD [ "node" ]