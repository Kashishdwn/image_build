#!/bin/bash

set -eu
rhel8_raw="ami-06a0b4e3b7eb7a300"
region="ap-south-1"
aminame="rhel8_kashish"
security_group_id="sg-09c420f6bbab64ce5"

cat <<EOF > var.json
      {
        "rhel8_raw": "${rhel8_raw}",
        "security_group_id": "${security_group_id}",
        "aminame": "${aminame}",
        "region": "${region}"
      }
EOF
packer build -var-file var.json templates/rhel8.json
