# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the WAR file into the container
COPY ./target/sonarqube-maven-example-2.0.2.war /app/myapp.war

# Expose the port your Spring Boot application listens on/var/lib/jenkins/workspace/javaapp/java_testing/target
EXPOSE 8080

# Command to run the Spring Boot application (embedded Tomcat)
CMD ["java", "-jar", "myapp.war"]

