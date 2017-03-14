#!/usr/bin/env bash

# Check if pacemaker cluster MASTER is on the current node

# Virtual IP to check
VIP='1.1.1.1'

if ip addr | grep --quiet $VIP; then
  echo 'Cluster is OK'
  exit 0
else
  echo 'ERROR: cluster is DISABLED or in SLAVE mode!'
  exit 1
fi
