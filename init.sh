#!/bin/sh

export OPENCELL_HOST=${OPENCELL_HOST:-localhost}
export OPENCELL_PORT=8
echo ">>> Downloading opencell softwares & docker images"
mkdir input-files 
cd input-files
wget -L http://dl.opencellsoft.com/current/opencell.war  --output-document opencell.war
wget -L http://dl.opencellsoft.com/current/import-postgres.sql  --output-document import-postgres.sql
wget -L http://dl.opencellsoft.com/keycloak/init-user-db.sh  --output-document init-user-db.sh
echo "elasticsearch.restUri=" > opencell-admin.properties
chown  1000:1000 opencell-admin.properties
echo "Pulling docker images from docker hub"
