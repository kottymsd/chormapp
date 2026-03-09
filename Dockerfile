FROM alpine:latest
RUN apk update && apk add apache2
WORKDIR /chromapp
COPY index.html /var/www/localhost/htdocs/
CMD ["httpd", "-D", "FOREGROUND"]
