FROM i386/debian:sid

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -qy install --no-install-recommends \
    pypy \
    python \
    ca-certificates \
    wget \
    atool \
    less \
    build-essential \
    cmake \
    gcc-multilib \
    g++-multilib \
    git \
    zlib1g-dev \
    libfreetype6-dev \
    libpcre3-dev \
    liblzma-dev \
    libgl2ps-dev

# RUN cd /opt && wget https://bitbucket.org/pypy/pypy/downloads/pypy2-v5.9.0-linux32.tar.bz2 \
#     && aunpack pypy2-v5.9.0-linux32.tar.bz2 \
#     && cd pypy2-v5.9.0-linux32/bin \
#     && ./pypy -m ensurepip \
#     && ./pip install wheel

ENTRYPOINT ['/bin/bash']
