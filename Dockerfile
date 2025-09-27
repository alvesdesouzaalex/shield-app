# Imagem base com JDK 21
FROM eclipse-temurin:21-jdk-alpine

# Define diretório de trabalho dentro do container
WORKDIR /app

# Copia o código do projeto
COPY src ./src

# Faz build do jar
RUN mvn clean install -DskipTests

# Etapa 2: Runtime com JDK 21
FROM eclipse-temurin:21-jdk

WORKDIR /app

# Copia o jar gerado da etapa de build
COPY --from=builder /app/target/shield-app-0.0.1-SNAPSHOT.jar app.jar

# Expõe a porta configurada (9000)
EXPOSE 9000

# Sobe a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
