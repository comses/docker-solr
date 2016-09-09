# solr CoMSES Dockerfile
FROM solr:6.2-alpine
MAINTAINER CoMSES Net <dev@comses.net>
ARG COMSES_UID=2781
USER root
RUN addgroup -S comses && adduser -G comses -S comses -u $COMSES_UID && mkdir -p /opt/solr/server/solr/mycores \
        && chown -R comses: /opt/solr/server/solr/mycores
