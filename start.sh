echo "Stopping containers"

docker stop shield-app;
docker stop nginx-app;

sleep 1;

echo "Removing containers"
docker rm shield-app;
docker rm nginx-app;

sleep 1;

echo "Starting containers"

docker-compose up -d;

sleep 2;

echo "Seeing containers"
docker ps -a;