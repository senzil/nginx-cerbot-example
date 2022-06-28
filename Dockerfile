FROM nginx:alpine
LABEL maintainer="Pablo González <pablo@senzil.com>"
RUN apk add certbot
RUN mkdir -p /var/www/certbot/ & mkdir -p /var/log/crond/
COPY --chown=0:0 --chmod=0755 ./100-auto-renew-certs.sh /docker-entrypoint.d
COPY --chown=0:0 ./nginx.conf /etc/nginx/conf.d/default.conf

