# Use the official Tomcat base image from Docker Hub
FROM tomcat:9.0-jdk17-openjdk-slim

# Set the working directory inside the container
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the Tomcat webapps directory
# Make sure to replace the WAR file path below with your actual WAR file location
COPY ./target/sonarqube-maven-example-2.0.2.war /usr/local/tomcat/webapps/ROOT.war

# Expose the port Tomcat is running on (default: 8080)
EXPOSE 8080

# The Tomcat server is already running when the container starts, so no need for CMD
