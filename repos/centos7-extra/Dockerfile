FROM centos:centos7
RUN yum update -y
RUN yum -y install less tree telnet
RUN yum -y install net-tools iproute openssh-clients tcpdump
RUN curl -L https://busybox.net/downloads/binaries/1.31.0-defconfig-multiarch-musl/busybox-x86_64 -o /usr/bin/busybox && chmod +x /usr/bin/busybox
ENTRYPOINT ["/bin/bash", "-c", "sleep infinity"]
