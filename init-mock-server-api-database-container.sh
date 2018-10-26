FILE=/Users/throdo/Programmation/Workspaces/Orange/API/MockServer/API-Mockserver/mock-server-V2/mock-server/src/main/resources/sql.sql
docker exec -i mock-server-api-db mysql -uroot -ppasswd< ${FILE}

