FROM centos:centos7
RUN yum update -y
RUN yum -y install less tree telnet
RUN yum -y groups install "Development Tools"
RUN yum -y install centos-release-scl
RUN yum -y install devtoolset-8
RUN source /opt/rh/devtoolset-8/enable
ENTRYPOINT ["/bin/bash", "-c", "sleep infinity"]
