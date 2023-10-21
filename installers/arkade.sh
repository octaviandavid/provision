#!/bin/bash

# install arkade for k8s
curl -sLS https://get.arkade.dev | sh
mkdir -p ~/.arkade/bin
mv arkade ~/.arkade/bin

ark get minikube       # for creating a locker k8s cluster (using docker)
# minikube version

ark get kubectl        # for interacting with the cluster API
# kubectl version 

ark get helm           # for charts (bundles for k8s manifest files)
# helm version

ark get krew           # for extra kubectl plugins
# krew version

ark get kubectx        # for switching clusters at ease

ark get kubens         # for switching cluster namespaces

ark get jq             # JSON query - used in many of our scripts
# jq --version

ark get yq             # yaml query - used in some of our scripts
# yq --version

ark get dive           # check docker image layers
# dive version

ark get flux           # for gitops
# flux --version

ark get kustomize      # for testing kustomization patches locally
# kustomize version

ark get nats           # for the pub-sub 
# nats --version

ark get nats-server    # starting a local nats server

ark get opa            # policy engine using Rego language

#ark get sops           # mozilla sops - currently having issues with this one
