FROM ubuntu:22.04
RUN apt update -y
RUN apt install nginx
COPY index.html /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
