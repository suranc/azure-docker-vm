# Docker VM in Azure

This repository contains tools to create and interact with an Ubuntu VM in Azure to run docker.  Currently just provisions in B1S to stay inside the free tier.

## Creating VM

Create the VM by running `./setup-vm.sh`

## Getting VM IP

You can get the IP of your povisioned VM by running `./get-ip.sh`

## SSHing into VM

To SSH into the VM, run `./ssh.sh`