ARG DISTRO="ubuntu:18.04"

FROM ${DISTRO}

RUN mkdir app
RUN cd /app && touch test.txt

COPY ./assets/Architecture.svg /app/assets/

CMD ["echo", "Hello World!"]