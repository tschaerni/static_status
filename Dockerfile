FROM alpine:3.8

RUN mkdir -p /opt/status_page && \
    apk add -qU --no-cache bash curl

COPY ./status.sh /opt/status_page/

CMD bash /opt/status_page/status.sh
