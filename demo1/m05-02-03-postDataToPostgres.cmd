
rem 08/17/2021 05:53 am - SSN 


psql --host=ps-330-docker-run-postgres.postgres.database.azure.com --port=5432 --username=pguser@ps-330-docker-run-postgres --dbname=wb-prod  -f %~dp0\database\init-products-db.sql
