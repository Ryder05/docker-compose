#!/bin/sh

export OPENCELL_HOST=${OPENCELL_HOST:-localhost}
export OPENCELL_PORT=8
echo ">>> Downloading opencell softwares & docker images"
mkdir input-files
curl -L http://dl.opencellsoft.com/current/opencell.war -o input-files/opencell.war
curl -L http://dl.opencellsoft.com/current/import-postgres.sql -o input-files/import-postgres.sql
curl -L http://dl.opencellsoft.com/keycloak/init-user-db.sh -o input-files/init-user-db.sh
echo "elasticsearch.restUri=" > input-files/opencell-admin.properties
chown  1000:1000 input-files/opencell-admin.properties
echo "Pulling docker images from docker hub"
