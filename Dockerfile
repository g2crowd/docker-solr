FROM solr:5.3.1
USER root
COPY solr/configsets /opt/solr/server/solr/configsets
COPY create_cores.sh /opt/solr/server/solr
RUN /opt/solr/server/solr/create_cores.sh
RUN chown -R solr:solr /opt/solr/server/solr
USER solr
