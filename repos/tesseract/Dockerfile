# tesseract:4.1.1e
FROM centos:centos7

RUN ["/bin/sh", "-c", "yum -y update"]

RUN ["/bin/sh", "-c", "yum -y groupinstall \"development tools\""]
RUN ["/bin/sh", "-c", "yum -y install libpng-devel libtiff-devel libjpeg-devel"]

RUN ["/bin/sh", "-c", "yum -y install centos-release-scl"]
RUN ["/bin/sh", "-c", "yum -y install devtoolset-7-gcc-c++"]

RUN ["/bin/sh", "-c", "source /opt/rh/devtoolset-7/enable"]

COPY giflib-5.1.4.tar.bz2 /usr/src/
WORKDIR /usr/src
RUN ["/bin/sh", "-c", "tar -xf giflib-5.1.4.tar.bz2"]
WORKDIR /usr/src/giflib-5.1.4
RUN ["./configure", "--prefix=/usr", "--disable-static"]
RUN ["/bin/sh", "-c", "make"]
RUN ["/bin/sh", "-c", "make install"]

WORKDIR /usr/src
RUN ["/bin/sh", "-c", "curl -kLO http://mirror.kumi.systems/gnu/autoconf-archive/autoconf-archive-2019.01.06.tar.xz"]
RUN ["/bin/sh", "-c", "tar -xf autoconf-archive-2019.01.06.tar.xz"]
WORKDIR /usr/src/autoconf-archive-2019.01.06
RUN ["./configure", "--prefix=/usr"]
RUN ["/bin/sh", "-c", "make"]
RUN ["/bin/sh", "-c", "make install"]

WORKDIR /usr/src
RUN ["/bin/sh", "-c", "curl -kLO http://www.leptonica.org/source/leptonica-1.80.0.tar.gz"]
RUN ["/bin/sh", "-c", "tar -xf leptonica-1.80.0.tar.gz"]
WORKDIR /usr/src/leptonica-1.80.0
RUN ["./configure", "--prefix=/usr/local/"]
RUN ["/bin/sh", "-c", "make"]
RUN ["/bin/sh", "-c", "make install"]

WORKDIR /usr/src
RUN ["/bin/sh", "-c", "curl -kLO https://github.com/tesseract-ocr/tesseract/archive/4.1.1.tar.gz"]
RUN ["/bin/sh", "-c", "tar -xf 4.1.1.tar.gz"]
WORKDIR /usr/src/tesseract-4.1.1
ENV PKG_CONFIG_PATH /usr/local/lib/pkgconfig
RUN ["./autogen.sh"]
RUN ["./configure", "--prefix=/usr/local/", "--with-extra-libraries=/usr/local/lib/"]
RUN ["/bin/sh", "-c", "make install"]
ENV TESSDATA_PREFIX /usr/local/share/tessdata

WORKDIR /usr/src
RUN ["/bin/sh", "-c", "ldconfig"]
RUN ["/bin/sh", "-c", "rm -rf autoconf-archive-2019.01.06 autoconf-archive-2019.01.06.tar.xz leptonica-1.80.0 leptonica-1.80.0.tar.gz tesseract-4.1.1 4.1.1.tar.gz giflib-5.1.4 giflib-5.1.4.tar.bz2"]

COPY sample.jpg /tmp/tesseract/

WORKDIR /

ENTRYPOINT ["/bin/sh", "-c", "sleep infinity"]
