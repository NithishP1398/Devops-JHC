# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jdk-alpine

# Declare a volume
VOLUME /tmp

# Set the working directory in the container
COPY target/*.jar /app.jar

# Expose port 8095
EXPOSE 8095

# Specify the default command to run on container start
CMD ["sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar"]


