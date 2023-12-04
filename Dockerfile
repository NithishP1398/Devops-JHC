# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the JAR file into the container at /usr/src/app
COPY target/usermanagement-microservice-3.0.0-AWS-XRay-MySQLDB.jar .

# Specify the default command to run on container start
CMD ["java", "-jar", "usermanagement-microservice-3.0.0-AWS-XRay-MySQLDB.jar"]
