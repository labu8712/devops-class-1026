FROM nginx:1.27

WORKDIR /srv/project

# COPY nginx/hello.html /usr/share/nginx/html/index.html
COPY . .