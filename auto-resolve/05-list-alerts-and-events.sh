#!/bin/bash
echo "Alerts:"
echo "======================================================"
curl -k -s \
    -H "Hawkular-Tenant: $HAWKULAR_TENANT" \
    -H "Authorization: Bearer $HAWKULAR_TOKEN" \
    https://$HAWKULAR_HOST/hawkular/alerts/?start=0 | jq .

echo "Events:"
echo "======================================================"
curl -k -s \
    -H "Hawkular-Tenant: $HAWKULAR_TENANT" \
    -H "Authorization: Bearer $HAWKULAR_TOKEN" \
    https://$HAWKULAR_HOST/hawkular/alerts/events?start=0 | jq .

