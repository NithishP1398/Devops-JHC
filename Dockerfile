# Use an official OpenJDK runtime as a parent image
FROM adoptium/openjdk17:latest

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/usermanagement-microservice-3.0.0-AWS-XRay-MySQLDB.jar.jar .

# Specify the default command to run on container start
CMD ["java", "-jar", "usermanagement-microservice-3.0.0-AWS-XRay-MySQLDB.jar.jar"]
