FROM alpine:latest
RUN apk update && apk add apache2
WORKDIR /chromapp
COPY index.html style.css premium.html /var/www/localhost/htdocs/
CMD ["httpd", "-D", "FOREGROUND"]
