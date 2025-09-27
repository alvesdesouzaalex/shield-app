# shield-app
This is an app to build a graphql app and build a shield with nginx

| How to start shield-app automatically
```shell
 sh start.sh
```


### Start manually
| Stop shield-app
```shell
 docker-compose down
```

| Start shield-app 
```shell
 mvn clean install;
 docker-compose up -d
```

| Rebuild shield-app
```shell
 mvn clean install;
 docker-compose up --build -d
```