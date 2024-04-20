#Start with a base image containing Java runtime
FROM openjdk:17-jdk-slim

#Information around who maintains the image
MAINTAINER toharifqi

#Install CURL to enable health check test command during docker-compose up
RUN apt-get update 
RUN apt-get install -y curl

#Add the application's jar to the image
COPY build/libs/configserver-0.0.1-SNAPSHOT.jar configserver-0.0.1-SNAPSHOT.jar

#Execute the application
ENTRYPOINT ["java", "-jar", "configserver-0.0.1-SNAPSHOT.jar"]
