#!/bin/bash

#curl -k -u jdoe:password -H 'Hawkular-Tenant: _ops'   https://$HAWKULAR_HOST/hawkular/alerts/alerts|jq .
 curl -k \
       -H "Hawkular-Tenant: ${HAWKULAR_TENANT}" \
       -H "Authorization: Bearer ${HAWKULAR_TOKEN}" \
       -H "Content-Type: application/json" \
       -d @my-trigger.json \
       https://${HAWKULAR_HOST}/hawkular/alerts/import/all | jq