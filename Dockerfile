FROM smebberson/alpine-nginx

RUN rm /etc/nginx/conf.d/default.conf
copy ./tools.conf /etc/nginx/conf.d/

WORKDIR /src
COPY . /src

CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80

