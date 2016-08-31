FROM smebberson/alpine-nginx

RUN rm /etc/nginx/conf.d/default.conf
COPY ./tools.conf /etc/nginx/conf.d/

WORKDIR /src
COPY . /src

EXPOSE 80

