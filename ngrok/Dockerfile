
FROM alpine:3.17.2

RUN apk add curl tar bash dos2unix

WORKDIR /ngrok

RUN curl -L https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz -o ngrok.tgz
RUN tar -xvf ngrok.tgz
RUN mv ngrok /usr/local/bin && chmod +x /usr/local/bin/ngrok
RUN rm ngrok.tgz

COPY ./entrypoint.sh /ngrok/entrypoint.sh
RUN chmod +x /ngrok/entrypoint.sh && dos2unix /ngrok/entrypoint.sh

CMD ["/ngrok/entrypoint.sh"]