# solr CoMSES Dockerfile
FROM solr
MAINTAINER CoMSES Net <editors@openabm.org>

RUN groupadd -r comses && useradd -r -g comses comses
