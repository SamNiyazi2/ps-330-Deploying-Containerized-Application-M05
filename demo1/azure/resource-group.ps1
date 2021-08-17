
# 08/16/2021 11:56 am - SSN

# create resource group

$rg = 'ps-330-docker-run'
$region = 'centralus'

az group create --name $rg --location $region