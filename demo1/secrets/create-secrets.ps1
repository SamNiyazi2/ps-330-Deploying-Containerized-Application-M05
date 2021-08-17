
# 08/16/2021 11:59 am - SSN 

# set your kubectl context *BEFORE* you run this, e.g.
# az aks get-credentials -g ps-330-docker-run -n ps-330-docker-run-aks

# prep the files in ./sources with PG connection and password - e.g.
# az postgres server show-connection-string -s ps-330-docker-run-postgres -u pguser -p *PASSWORD* -d wb-prod


kubectl delete secret -n wb-prod products-api-db 
kubectl delete secret -n wb-prod web-api  
kubectl delete secret -n wb-prod stock-api-connection 


kubectl create secret generic `
  -n wb-prod products-api-db `
  --from-file=sources/application.properties

kubectl create secret generic `
  -n wb-prod web-api `
  --from-file=sources/api.json

kubectl create secret generic `
  -n wb-prod stock-api-connection `
  --from-env-file=sources/stock-api.env