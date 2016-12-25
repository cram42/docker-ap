FROM alpine

MAINTAINER Sergio R. <sdelrio@users.noreply.github.com>

RUN apk add bash hostapd iptables dhcp
RUN echo "" > /var/lib/dhcp/dhcpd.leases
ADD wlanstart.sh /bin/wlanstart.sh

ENTRYPOINT [ "/bin/wlanstart.sh" ]
