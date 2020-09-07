#!/bin/sh

gsutil config -e <<EOF
/run/secrets/gcp-credentials.json
${GCP_PROJECT}
EOF
