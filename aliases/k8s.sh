#!/usr/bin/bash

export KUBE_EDITOR="code -w"

alias k="kubectl"
alias ks="kubectl config current-context"
alias kx="kubectx"

source <(kubectl completion zsh)

# get kube pod name
pod(){
	kubectl get pod | grep $1 | awk '{print $1}'
}

# k8 port forward

kf(){
	kubectl port-forward `pod $1` $2
}

# k8 exec
ke(){
	kubectl exec -ti `pod $1` /bin/sh
}

# k8 logs with bunys
kl(){
	kubectl logs `pod $1` -f --tail 20 |  pp
}

alias kap="kubectl resource-capacity"

kmemory(){
   kubectl get pod -A --no-headers | awk '{print $1} {print $2}' | xargs -n2 bash -c 'kubectl top pod -n $1 $2 --no-headers' bash
}

kvsk(){
    kubectl view-secret -n default --all $(kubectl get secret -n default | grep $1 | awk '{print $1}')
}

# kube secrets
#- requires: jq, kubectl
ksecrets(){
	kubectl get secret $1 -o json |
	jq -r '.data  | to_entries | .[]|[.key, .value]|  @tsv' |
  awk 'BEGIN {FS="\t"} {print $1} {cmd="echo "$2"| base64 -d"; cmd| getline v; print v} {print $3}'

}

