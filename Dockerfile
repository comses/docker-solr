# solr CoMSES Dockerfile
FROM solr:6-alpine
MAINTAINER CoMSES Net <dev@comses.net>
ENV COMSES_UID=2781
USER root
RUN adduser -u $COMSES_UID -D comses && mkdir -p /opt/solr/server/solr/mycores \
        && chown -R comses: /opt/solr/server/solr/mycores
