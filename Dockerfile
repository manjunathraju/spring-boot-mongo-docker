FROM eclipse-temurin:8-jre-alpine

# Create application directory
RUN mkdir -p /opt/app

ENV PROJECT_HOME=/opt/app

# Copy the Spring Boot JAR
COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar

# Set working directory
WORKDIR $PROJECT_HOME

# Expose application port
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "spring-boot-mongo.jar"]





# OLD DOCKER IMAGE FILE

#FROM openjdk:8-alpine

# Required for starting application up.
#RUN apk update && apk add /bin/sh

#RUN mkdir -p /opt/app
#ENV PROJECT_HOME /opt/app

#COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar

#working directory and port running on 8080
#WORKDIR $PROJECT_HOME
#EXPOSE 8080
#CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
