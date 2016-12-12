#!/bin/bash
curl -s -k  \
  -H "Hawkular-Tenant: ${HAWKULAR_TENANT}"       \
  -H "Authorization: Bearer ${HAWKULAR_TOKEN}" \
  -H "Content-Type: application/json" \
  -X POST \
  -d '[{"timestamp": 1481209951000, "value": "1480083597"}]' \
  https://${HAWKULAR_HOST}/hawkular/metrics/gauges/data_x/raw