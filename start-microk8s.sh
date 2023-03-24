#!/bin/sh

microk8s install --cpu 4 --mem 8
microk8s status --wait-ready
microk8s enable dns rbac hostpath-storage
microk8s status --wait-ready
microk8s enable metallb:192.168.105.50-192.168.105.100
