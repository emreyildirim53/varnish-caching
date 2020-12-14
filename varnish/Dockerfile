FROM alpine:3.10.0

RUN apk add --no-cache varnish=6.2.1-r0

COPY default.vcl /etc/varnish/default.vcl

COPY start.sh /start.sh

RUN chmod 755 /start.sh

EXPOSE 80
CMD ["/start.sh"]