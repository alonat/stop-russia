FROM alpine/bombardier:latest

RUN apk add curl

COPY . /app
WORKDIR /app

ENTRYPOINT ["sh"]
CMD ["stop.sh"]
