FROM nginx:alpine

# instalar módulo lua
RUN apk add --no-cache nginx-mod-http-lua

# copia a config do nginx
COPY default.conf /etc/nginx/conf.d/default.conf
