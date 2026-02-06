# For nginx
# Base OS
#FROM ubuntu:22.04

# Install nginx
#RUN apt update && apt install -y nginx

# Copy website files to nginx default folder
#COPY index.html /usr/share/nginx/html/

# Open port 80
#EXPOSE 80

# Start nginx in foreground (required for Docker)
#CMD ["nginx", "-g", "daemon off;"]

#For apache2
FROM   UBUNTU:22.04
RUN apt update && apt install -y apache2
#COPY index.html /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]

