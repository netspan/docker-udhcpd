# Description

udhcpd from the busybox project provides a simple and tiny DHCP server in your local network
Image size is only around 0.7 MiB

# Usage

get example config file and edit to your needs:

    wget https://git.busybox.net/busybox/plain/examples/udhcp/udhcpd.conf

run:

    docker run -d --net host -v $PWD/udhcpd.conf:/etc/udhcpd.conf -v udhcpd:/udhcpd netspan/udhcpd

without persisting DHCP leases:


    docker run -d --net host -v $PWD/udhcpd.conf:/etc/udhcpd.conf netspan/udhcpd
