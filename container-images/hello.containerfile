FROM docker.io/library/httpd:2.4

COPY container-images/hello/httpd.conf /usr/local/apache2/conf/httpd.conf
COPY container-images/hello/htdocs/ /usr/local/apache2/htdocs/
