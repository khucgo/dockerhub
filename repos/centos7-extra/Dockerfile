FROM centos:centos7
RUN ["/bin/bash", "-c", "yum update -y"]
RUN ["/bin/bash", "-c", "yum -y install less tree telnet"]
RUN ["/bin/bash", "-c", "yum -y install net-tools iproute openssh-clients tcpdump"]
ENTRYPOINT [ "/bin/bash", "-c", "sleep infinity" ]
