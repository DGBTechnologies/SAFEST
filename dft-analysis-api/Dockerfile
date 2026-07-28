FROM python:3.11-slim-bookworm

USER root
WORKDIR /home

RUN apt-get update && apt-get -y upgrade

COPY build ./build
RUN chmod +x /home/build/dft-analysis-api

RUN mkdir /home/projects

EXPOSE 8002

CMD ["/home/build/dft-analysis-api"]