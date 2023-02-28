FROM movesrwth/stormpy:ci-release

USER root
WORKDIR /home

RUN apt-get update && apt-get -y upgrade

COPY build ./build
RUN chmod +x /home/build/stormpy-service-api


EXPOSE 8001

CMD ["/home/build/stormpy-service-api"]