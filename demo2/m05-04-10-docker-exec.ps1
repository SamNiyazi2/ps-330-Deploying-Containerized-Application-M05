
# 08/18/2021 12:10 pm - SSN 

. ..\util 



write-host @"


ls /app/secrets 

cat /app/secrets/api.json 

wget -O- http://stock-api:8080/stock/1 (Failed)
"@ -ForegroundColor Yellow

ec -command "docker exec -it demo2_web sh"

