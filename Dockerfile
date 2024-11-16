FROM nginx:1.27

WORKDIR /srv/project

COPY nginx/hello.html /usr/share/nginx/html/index.html
# COPY . .

RUN apt-get update
RUN apt-get install -y vim iputils-ping

EXPOSE 8088

VOLUME [ "/data" ]

ENV env_message="Hello env"

ARG arg_message="Hello arg"
ENV arg_message=${arg_message}

RUN echo ${arg_message} > arg_message.txt