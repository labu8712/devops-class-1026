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

HEALTHCHECK --interval=30s --timeout=5s --start-period=3s --retries=1 \
    CMD curl http://localhost:8080 || exit 1

# CMD ["/bin/bash", "-h", "okokokok"]
# CMD /bin/bash && ls | aijidfjaisjdfijasdifasdf

ENTRYPOINT [ "ls" ]
CMD [ "-al" ]