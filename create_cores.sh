#!/usr/bin/env bash

set -e

/opt/solr/bin/solr start

/opt/solr/bin/solr create_core -c development -d sunspot
/opt/solr/bin/solr create_core -c test -d sunspot

/opt/solr/bin/solr stop
