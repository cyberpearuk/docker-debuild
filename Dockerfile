FROM ubuntu

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    build-essential \
    devscripts \
    fakeroot \
    debhelper \
    git \
    git-buildpackage \
    lintian \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

VOLUME /workspace

CMD debuild
