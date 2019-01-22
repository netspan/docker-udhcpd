FROM busybox:latest
RUN mkdir -p /var/lib/misc/ && \
    mkdir /udhcpd && \
    touch /udhcpd/udhcpd.leases &&\
    ln /udhcpd/udhcpd.leases /var/lib/misc/udhcpd.leases
CMD ["udhcpd", "-f"]
