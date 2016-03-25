#!/bin/bash -x
sed -e "s|##OPENSHIFT_POSTGRESQL_DB_HOST##|$OPENSHIFT_POSTGRESQL_DB_HOST|g" \
-e "s|##OPENSHIFT_POSTGRESQL_DB_USERNAME##|$OPENSHIFT_POSTGRESQL_DB_USERNAME|g" \
-e "s|##OPENSHIFT_POSTGRESQL_DB_PASSWORD##|$OPENSHIFT_POSTGRESQL_DB_PASSWORD|g" \
-e "s|##OPENSHIFT_POSTGRESQL_DB_PORT##|$OPENSHIFT_POSTGRESQL_DB_PORT|g" \
-e "s|##OPENSHIFT_APP_NAME##|$OPENSHIFT_APP_NAME|g" \
-e "s|##OPENSHIFT_DATA_DIR##|$OPENSHIFT_DATA_DIR|g" \
-e "s|##OPENSHIFT_PHP_IP##|$OPENSHIFT_PHP_IP|g" \
-e "s|##OPENSHIFT_PHP_LOG_DIR##|$OPENSHIFT_PHP_LOG_DIR|g" \
${OPENSHIFT_REPO_DIR}/misc/sphinx.conf
exit 0