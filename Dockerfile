
FROM openjdk:21-jdk
LABEL authors="arshdang"
EXPOSE 8080
EXPOSE 5432


COPY target/Login-API-0.0.1-SNAPSHOT.jar login-deploy.jar
ENTRYPOINT ["java", "-jar", "login-deploy.jar"]