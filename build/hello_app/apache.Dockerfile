#https://hub.docker.com/_/httpd
FROM httpd:2.4
COPY ./index.html /usr/local/apache2/htdocs/index.html
EXPOSE 80

#docker run -dit --name my-running-app -p 8080:80 my-apache2