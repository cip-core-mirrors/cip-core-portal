#!/bin/sh


sed -e "s#\${clientId}#${OPENID_CLIENT_ID}#" -e \
        "s#\${clientSecret}#${OPENID_CLIENT_SECRET}#" -e \
        "s#\${realmUrl}#${OPENID_REALM_URL}#" -e \
        "s#\${encryptionKey}#${ENCRYPTION_KEY}#" -e \
        "s#\${upstreamUrl}#${GATEKEEPER_UPSTREAM_URL}#" -e \
        "s#\${redirectionUrl}#${GATEKEEPER_REDIRECTION_URL}#" \
        gatekeeper-conf.yaml > conf.yaml


exec "$@"
