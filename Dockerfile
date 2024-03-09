FROM alpine:latest
RUN apk add iproute2
CMD ["/sbin/ip", "route", "show"]
