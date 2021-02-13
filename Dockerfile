FROM haskell:8

LABEL maintainer Srdjan Vranac <vranac@gmail.com>

RUN apt-get update \
    && apt-get install -y graphviz \
    && rm -f /var/cache/apt/archives/*.deb \
    && rm -f /var/cache/apt/archives/partial/*.deb \
    && rm -f /var/cache/apt/*.bin \
    && cabal v2-update \
    && cabal v2-install erd

WORKDIR /erd

ENTRYPOINT ["erd"]
CMD ["-h"]
