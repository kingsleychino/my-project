# Use lightweight OpenJDK 8 image
FROM openjdk:8-jre-alpine

# Create application directory
WORKDIR /usr/app

# Copy JAR file into container
COPY build/libs/my-app-1.0-SNAPSHOT.jar app.jar

# Expose application port
EXPOSE 8080

# Start Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
