
# Servidor web NGINX que serve uma página simples contendo seu nome de host, endereço IP e porta, bem como o URI da solicitação e a hora local do servidor web.

As imagens são carregadas no Docker Hub.

The images are uploaded to Docker Hub -- https://hub.docker.com/r/rafaelarcanjo/hello-world

Como executar:
```bash
docker run -P -d rafaelarcanjo/hello-world:latest
# OR
docker run -p 80:80 -d rafaelarcanjo/hello-world:latest
```

Referência: https://github.com/nginxinc/NGINX-Demos/tree/master/nginx-hello
