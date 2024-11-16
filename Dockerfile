FROM nginx:1.27

WORKDIR /srv/project

COPY nginx/hello.html /usr/share/nginx/html/index.html
# COPY . .

RUN apt-get update
RUN apt-get install -y vim iputils-ping

EXPOSE 8088

VOLUME [ "/data" ]