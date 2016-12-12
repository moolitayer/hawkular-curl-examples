#!/bin/bash

curl -k -s \
    -H "Hawkular-Tenant: $HAWKULAR_TENANT" \
    -H "Authorization: Bearer $HAWKULAR_TOKEN" \
    https://$HAWKULAR_HOST/hawkular/alerts/?start=0 | jq .

curl -k -s \
    -H "Hawkular-Tenant: $HAWKULAR_TENANT" \
    -H "Authorization: Bearer $HAWKULAR_TOKEN" \
    https://$HAWKULAR_HOST/hawkular/alerts/events?start=0 | jq .

