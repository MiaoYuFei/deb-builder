FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
RUN apt-get update && \
    apt-get install -y --no-install-recommends build-essential devscripts equivs && \
    apt-get clean

COPY ./docker-entrypoint.sh /
COPY ./deb-builder.sh /

WORKDIR /build
ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/deb-builder.sh"]
