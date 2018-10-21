#!/bin/bash

az vm show \
  --resource-group $(cat data/group|jq -r .name) \
  --name DockerVM \
  --show-details \
  --query [publicIps] \
  --o tsv

