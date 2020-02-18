FROM debian:stable


RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    devscripts \
    fakeroot \
    debhelper \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

VOLUME /workspace

CMD debuild
