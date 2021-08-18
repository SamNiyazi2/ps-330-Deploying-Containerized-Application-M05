
# 08/17/2021 02:21 pm - SSN 

#ensure rg:
. $PSScriptRoot\resource-group.ps1

# create server:
$pgServer = "$rg-postgres"
$pgSku = 'B_Gen5_1'
$pgUsername = 'pguser'

#$pgPassword = Read-Host -Prompt 'Password for Postgres user' -AsSecureString
$pgPassword = "DbUserPass0817"


# -p $([System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pgPassword)))

az postgres server create `
    -l $region -g $rg -n $pgServer `
    --version '11' --sku-name $pgSku `
    -u $pgUsername `
    -p $pgPassword
    
# use this to find sizes (SKUs):
# az postgres server list-skus -l $region -o table

# create products db:
$pgDb = 'wb-prod'
az postgres db create -g $rg -s $pgServer -n $pgDb