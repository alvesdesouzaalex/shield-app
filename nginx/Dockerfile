# Usa OpenResty (Nginx + LuaJIT)
FROM openresty/openresty:alpine

# Remove conf padrão do OpenResty
RUN rm /usr/local/openresty/nginx/conf/nginx.conf

# Copia nossa conf customizada
COPY nginx.conf /usr/local/openresty/nginx/conf/nginx.conf

EXPOSE 80

CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
