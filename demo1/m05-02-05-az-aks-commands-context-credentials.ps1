
# 08/17/2021 05:24 am - SSN

. ..\util


ec -command "az aks list -o table"

ec -command "az aks get-credentials -g ps-330-docker-run -n ps-330-docker-run-aks" -n "Downloads all conncetion details and security details to connect to Azure AKS cluster"

ec -command "kubectl config get-contexts"


