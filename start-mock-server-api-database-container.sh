docker run --name mock-server-api-db -p 3306:3306 -e MYSQL_ROOT_PASSWORD=passwd -e MYSQL_DATABASE=mockedapi -d mysql:latest

docker logs -f mock-server-api-db
