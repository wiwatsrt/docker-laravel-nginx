FROM nginx:1.14-alpine

COPY nginx.conf /etc/nginx/nginx.conf

COPY php.conf /etc/nginx/php.conf

COPY nginx.vh.default.conf /etc/nginx/conf.d/default.conf

VOLUME ["/var/www", "/etc/nginx/sites-enabled"]