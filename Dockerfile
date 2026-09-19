FROM alpine:latest

RUN apk add --no-cache openjdk17-jre-headless curl

WORKDIR /app

RUN curl -L -o marconi.jar https://github.com

CMD ["java", "-jar", "marconi.jar", "--auto", "config.txt"]
