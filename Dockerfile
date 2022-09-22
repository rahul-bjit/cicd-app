FROM adoptopenjdk:11-jre
EXPOSE 8080

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} application.jar
ENTRYPOINT ["java", "-jar", "application.jar"]