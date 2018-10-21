#!/bin/bash

az vm create \
  --resource-group docker-vm-group \
  --name DockerVM \
  --image UbuntuLTS \
  --size Standard_B1S \
  --admin-username azureuser \
  --generate-ssh-keys \
  --custom-data cloud-config.yml
