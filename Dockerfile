FROM swaggerapi/swagger-ui
VOLUME ./doc /usr/share/nginx/html/doc
EXPOSE 8080

CMD ["node" , "server" ]