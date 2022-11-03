FROM adoptopenjdk/openjdk11:alpine-jre
ARG JAR_FILE=target/spring-boot-docker-0.0.1-SNAPSHOT.jar
WORKDIR opt
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]