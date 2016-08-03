# solr CoMSES Dockerfile
FROM solr:alpine
MAINTAINER CoMSES Net <editors@openabm.org>
USER root
RUN addgroup -S comses && adduser -G comses -S comses
RUN mkdir -p /opt/solr/server/solr/mycores
RUN chown -R comses: /opt/solr/server/solr/mycores
RUN chmod -R a+rw /opt/solr/server/solr/mycores 
