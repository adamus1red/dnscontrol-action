FROM stackexchange/dnscontrol:4.10.0@sha256:bafe6c9298efe5b259f10671b7cf5fb7dc125ba2f2152af501093dd10280582c

LABEL repository="https://github.com/koenrh/dnscontrol-action"
LABEL maintainer="Koen Rouwhorst <info@koenrouwhorst.nl>"

LABEL "com.github.actions.name"="DNSControl"
LABEL "com.github.actions.description"="Deploy your DNS configuration to multiple providers."
LABEL "com.github.actions.icon"="cloud"
LABEL "com.github.actions.color"="yellow"

RUN dnscontrol version && \
    apk add --no-cache bash

COPY README.md entrypoint.sh bin/filter-preview-output.sh /
ENTRYPOINT ["/entrypoint.sh"]
