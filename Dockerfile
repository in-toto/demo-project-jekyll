FROM nginx
MAINTAINER Santiago Torres-Arias <santiago@nyu.edu>

ADD _site /usr/share/nginx/html

EXPOSE 80

