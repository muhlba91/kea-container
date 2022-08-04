ARG ALPINE_VERSION="latest"
ARG KEA_VERSION

FROM alpine:${ALPINE_VERSION}

ARG ALPINE_VERSION
ARG KEA_VERSION
ARG CI_COMMIT_TIMESTAMP
ARG CI_COMMIT_SHA
ARG CI_COMMIT_TAG

LABEL org.opencontainers.image.authors="Daniel Muehlbachler-Pietrzykowski <daniel.muehlbachler@niftyside.com>"
LABEL org.opencontainers.image.vendor="Daniel Muehlbachler-Pietrzykowski"
LABEL org.opencontainers.image.source="https://github.com/muhlba91/kea-container"
LABEL org.opencontainers.image.created="${CI_COMMIT_TIMESTAMP}"
LABEL org.opencontainers.image.title="kea"
LABEL org.opencontainers.image.description="Kea DHCP Server"
LABEL org.opencontainers.image.base.name "alpine:${ALPINE_VERSION}"
LABEL org.opencontainers.image.revision="${CI_COMMIT_SHA}"
LABEL org.opencontainers.image.version="${KEA_VERSION}-${CI_COMMIT_TAG}"

RUN apk add --no-cache \
  bash \
  ca-certificates \
  git \
  wget \
  curl \
  s6-overlay \
  kea=${KEA_VERSION} \
  kea-admin=${KEA_VERSION} \
  kea-common=${KEA_VERSION} \
  kea-ctrl-agent=${KEA_VERSION} \
  kea-dhcp-ddns=${KEA_VERSION} \
  kea-dhcp4=${KEA_VERSION} \
  kea-dhcp6=${KEA_VERSION} \
  kea-doc=${KEA_VERSION} \
  kea-http=${KEA_VERSION} \
  kea-shell=${KEA_VERSION} \
  kea-static=${KEA_VERSION}

COPY assets/s6-rc.d/ /etc/s6-overlay/s6-rc.d/
COPY assets/log-to-stdout.sh /bin/log-to-stdout

EXPOSE 67/udp
EXPOSE 547/udp

ENTRYPOINT [ "/init"]
