FROM alpine:3.4
MAINTAINER David Kwasny <dkwasny67@gmail.com>

RUN apk add --no-cache dnsmasq

COPY files/dnsmasq.conf /etc/

CMD ["dnsmasq", "-k"]
