# Use Eclipse Temurin Java 8 runtime
FROM eclipse-temurin:8-jre-alpine

# Set working directory
WORKDIR /usr/app

# Copy jar file into container
COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/

# Expose application port
EXPOSE 8080

# Run application
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
