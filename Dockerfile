# Etapa base com Java 21
FROM eclipse-temurin:21-jdk-alpine

# Diretório de trabalho no container
WORKDIR /app

# Copia o arquivo JAR do build local para dentro do container
COPY target/*.jar app.jar

# Expõe a porta padrão do Spring Boot
EXPOSE 8080

# Comando para rodar o JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
