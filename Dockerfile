FROM ubuntu

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential \
    devscripts \
    fakeroot \
    debhelper \
    git \
    git-buildpackage \
    lintian \
    sudo \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

VOLUME /workspace
