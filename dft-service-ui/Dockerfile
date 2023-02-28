FROM node:lts-buster-slim

USER root
WORKDIR /home/node

RUN apt-get update && apt-get -y upgrade

RUN npm install -g http-server@13.0.1

COPY build ./build

EXPOSE 8080

CMD ["http-server", "/home/node/build"]
