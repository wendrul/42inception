FROM alpine:3.13

RUN	apk update && apk upgrade && apk add --no-cache \
        nginx \
        openssl

# nginx SSL
RUN mkdir /etc/nginx/ssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
        -out /etc/nginx/ssl/inception.pem \
        -keyout /etc/nginx/ssl/inception.key \
        -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=ede-thom/CN=ede-thom/"

# nginx config
RUN mkdir -p /run/nginx
COPY tools/nginx.conf /etc/nginx/conf.d/default.conf

# Start nginx
ENTRYPOINT ["nginx", "-g", "daemon off;"]