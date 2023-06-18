FROM httpd:latest

WORKDIR /usr/local/apache2/htdocs

COPY ./* /usr/local/apache2/htdocs

CMD ["httpd-foreground"]
