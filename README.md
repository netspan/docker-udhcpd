# Description

[udhcpd](https://udhcp.busybox.net/) provides a simple DHCP server in your local network
Image size is very small

# Usage

Get example config file and edit to your needs

    wget https://udhcp.busybox.net/udhcpd.conf

    docker run -d --net host -v $PWD/udhcpd.conf:/etc/udhcpd.conf -v udhcpd:/udhcpd netspan/udhcpd
