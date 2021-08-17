# 08/16/2021 12:10 pm - SSN 
############# $kubeversion = '1.19.7'

#ensure rg:
. $PSScriptRoot\resource-group.ps1

# create cluster:
$cluster = "$rg-aks"
$kubeversion = '1.19.9'
az aks create -g $rg -n $cluster `
    --node-count 2 --kubernetes-version $kubeversion

# use this to find supported kubernetes versions:
# az aks get-versions --location $region -o table
 
