FROM alpine:latest

RUN apk add httpd

WORKDIR /chromapp

COPY index.html /var/www/localhost/htdocs/

CMD ["httpd", "-D", "FOREGROUND"]

