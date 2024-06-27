#!/bin/bash

# install arkade for k8s
curl -sLS https://get.arkade.dev | sh
mkdir -p ~/.arkade/bin
mv arkade ~/.arkade/bin

# temporarily add arkade to path
function ark() {
  PATH=~/.arkade/bin:$PATH arkade $@
}


ark get minikube       # for creating a local k8s cluster (using docker)
ark get kind           # for creating a local k8s cluster (using docker)
ark get k3d            # for creating a local k3s cluster (using docker)

# docker related
# ark get docker-compose # - switched to system package
ark get dive           # check docker image layers
ark get vagrant       # for creating a local VM (using virtualbox)

# main kubernetes CLIs
ark get kubectl        # for interacting with the cluster API
ark get helm           # for charts (bundles for k8s manifest files)
ark get krew           # for extra kubectl plugins
ark get kubectx        # for switching clusters at ease
ark get kubens         # for switching cluster namespaces
ark get k9s            # k8s terminal UI 
ark get sops           # decript age encrypted secrets stored in git 

# generic tools 
ark get fzf            # interactive selector - used in many of our scripts
ark get jq             # JSON query - used in many of our scripts
ark get yq             # yaml query - used in some of our scripts

# specialized CLIs
ark get eksctl         # for creating AWS EKS clusters with CloudFormation
ark get flux           # for gitops
ark get kustomize      # for testing kustomization patches locally
ark get nats           # for the pub-sub 
ark get nats-server    # local nats server
ark get opa            # policy engine using Rego language

