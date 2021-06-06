########################################################
#
# Dockerfile to build Apache2 server image
# Based on Ubuntu

#set the base image to Ubuntu
FROM ubuntu
# Set timezone:
RUN ln -snf /usr/share/zoneinfo/$CONTAINER_TIMEZONE /etc/localtime && echo $CONTAINER_TIMEZONE > /etc/timezone
RUN apt-get update
# Install dependencies:
RUN apt-get install -y tzdata
RUN apt-get  -y install apache2
ADD . /var/www/html

ENTRYPOINT apachectl -D FOREGROUND
# Define the Author
MAINTAINER drnaws2020@gmail.com
CMD ["echo","Image Created"]
ENV name DevOPS DHARAM

