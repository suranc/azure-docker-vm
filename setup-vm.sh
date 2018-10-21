#!/bin/bash

# Create data directory in case it doesn't exist
mkdir -p data

# Create our docker-vm group
az group create --name docker-vm-group --location eastus > data/group

# Provision the VM, and run the cloud-config.yml to install docker
az vm create \
  --resource-group docker-vm-group \
  --name DockerVM \
  --image UbuntuLTS \
  --size Standard_B1S \
  --admin-username azureuser \
  --generate-ssh-keys \
  --custom-data cloud-config.yml \
  > data/vm
