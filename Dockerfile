# Imagem base com JDK 21
FROM eclipse-temurin:21-jdk-alpine

# Define diretório de trabalho dentro do container
WORKDIR /app

# Copia o JAR gerado pelo Maven para dentro do container
COPY target/shield-app-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta da aplicação Spring Boot
EXPOSE 9000

# Comando de inicialização
ENTRYPOINT ["java", "-jar", "app.jar"]

