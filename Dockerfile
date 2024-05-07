FROM ubuntu:latest

COPY build /usr/share/nginx/html

ENTRYPOINT ["nginx", "-g", "daemon off;"]