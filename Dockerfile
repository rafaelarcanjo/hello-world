FROM nginx:alpine

RUN apk add --no-cache bash

COPY index.html /index.html
COPY 90-envsubst-hello-world.sh /docker-entrypoint.d/90-envsubst-hello-world.sh
COPY favicon.ico /usr/share/nginx/html/favicon.ico

RUN chmod +x /docker-entrypoint.d/90-envsubst-hello-world.sh
