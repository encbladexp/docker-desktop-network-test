FROM alpine:3.21.3
RUN apk add iproute2
CMD ["/sbin/ip", "route", "show"]
