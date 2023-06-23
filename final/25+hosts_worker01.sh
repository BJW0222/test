#!/usr/bin/bash

su - << EOF
VMware1!
hostnamectl set-hostname k8s-worker-01
cat /home/phoenix/set_net.yml > /etc/netplan/01-network-manager-all.yaml
netplan apply
echo "127.0.0.1 k8s-worker-01" > /etc/hosts
echo "20.20.50.10 k8s-master" >> /etc/hosts
echo "20.20.50.20 k8s-worker-01" >> /etc/hosts
echo "20.20.50.30 k8s-worker-02" >> /etc/hosts
echo "20.20.50.40 k8s-worker-03" >> /etc/hosts
EOF
