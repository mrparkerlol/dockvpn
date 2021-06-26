FROM alpine:latest
RUN apk add openvpn iptables socat curl openssl
ADD ./bin /usr/local/sbin
VOLUME /etc/openvpn
EXPOSE 53/tcp 53/udp
CMD run
