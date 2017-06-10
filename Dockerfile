# solr CoMSES Dockerfile
FROM solr:6.6-alpine
LABEL maintainer "CoMSES Net <devops@comses.net>"
ENV COMSES_UID=2781
USER root
RUN adduser -u $COMSES_UID -D comses && mkdir -p /opt/solr/server/solr/mycores \
        && chown -R comses: /opt/solr/
USER comses
