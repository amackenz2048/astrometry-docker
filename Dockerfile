FROM ubuntu:14.04

RUN apt-get update &&  apt-get upgrade -y
RUN apt-get install -y \
    libcairo2-dev \
    libnetpbm10-dev \
    netpbm \
    libpng12-dev \
    libjpeg-dev \
    python-numpy \
    python-pyfits \
    python-dev \
    zlib1g-dev \
    libbz2-dev \
    swig \
    make \
    cfitsio-dev \
    curl \
    wget


WORKDIR /tmp

RUN wget http://astrometry.net/downloads/astrometry.net-0.67.tar.gz

RUN tar -zxvf astrometry.net-0.67.tar.gz

WORKDIR /tmp/astrometry.net-0.67

RUN make extra install install-indexes


ENV PATH=/usr/local/astrometry/bin:${PATH}
WORKDIR /astrometry

RUN rm -rv /usr/local/astrometry/data
RUN ln -s /astrometry/data /usr/local/astrometry/data
