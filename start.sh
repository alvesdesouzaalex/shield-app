echo "Stop containers"

docker stop shield-app;
docker stop nginx-app;

sleep 1;

echo "Removendo containers"
docker rm shield-app;
docker rm nginx-app;

sleep 1;

echo "Building maven project: mvn clean install"

mvn clean install;

sleep 1;

echo "Starting containers"

docker-compose up -d;

sleep 2;

echo "Seeing containers"
docker ps -a;