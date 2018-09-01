FROM nginx:1.14-alpine

RUN apk update && apk upgrade && addgroup -g 82 -S www-data && adduser -u 82 -D -S -G www-data www-data

COPY nginx.conf /etc/nginx/nginx.conf

COPY php.conf /etc/nginx/php.conf

COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

VOLUME ["/var/www", "/etc/nginx/sites-enabled"]