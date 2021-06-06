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
ADD /home/dharam/Desktop/drnaws/index.html /var/www/html

# Define the Author
MAINTAINER drnaws2020@gmail.com
CMD ["echo","Image Created"]


