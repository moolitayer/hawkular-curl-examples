# Trigger
curl -k -s \
    -H "Hawkular-Tenant: $HAWKULAR_TENANT" \
    -H "Authorization: Bearer $HAWKULAR_TOKEN" \
    -X DELETE \
    https://$HAWKULAR_HOST/hawkular/alerts/triggers/ops-example| jq .

# Alerts
curl -k -s \
    -H "Hawkular-Tenant: $HAWKULAR_TENANT" \
    -H "Authorization: Bearer $HAWKULAR_TOKEN" \
    -X PUT \
    https://$HAWKULAR_HOST/hawkular/alerts/delete?tagQuery="nodename|vm-48-124.eng.lab.tlv.redhat.com"

# vents
curl -k -s \
    -H "Hawkular-Tenant: $HAWKULAR_TENANT" \
    -H "Authorization: Bearer $HAWKULAR_TOKEN" \
    -X PUT \
    https://$HAWKULAR_HOST/hawkular/alerts/events/delete?tagQuery="nodename|vm-48-124.eng.lab.tlv.redhat.com"
