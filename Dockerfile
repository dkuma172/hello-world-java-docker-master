#base image
FROM ubuntu

#code maintained by 
MAINTAINER Dinesh

#label
LABEL BASE_IMAGE="ubuntu"
LABEL JAVA_VERSION="11"

#run commands during image creation
RUN apt-get update && apt-get install -y openjdk-11-jdk

WORKDIR /docker/java/

#copy build file to image
COPY target/*.jar /docker/java/application.jar

#port 8080
EXPOSE 8080

#execute during container 
CMD ["java", "-jar", "application.jar"]