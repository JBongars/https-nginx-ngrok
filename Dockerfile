FROM nginx:stable-alpine3.17-slim

ARG PROJECT="www.helloworld.com"

RUN apk add --no-cache openssl

RUN openssl req -newkey rsa:2048 \
    -nodes \
    -keyout /etc/nginx/ssl_private_key.key \
    -x509 \
    -days 365 \
    -out /etc/nginx/ssl_certificate.crt \
    -subj "/C=US/ST=State/L=City/O=Organization/CN=${PROJECT}"

CMD ["nginx", "-g", "daemon off;"]