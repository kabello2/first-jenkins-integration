FROM openjdk:21
EXPOSE 8080
ADD target/automated-integration.jar automated-integration.jar
ENTRYPOINT ["java", "-jar", "automated-integration.jar"]