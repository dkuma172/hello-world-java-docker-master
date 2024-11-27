FROM ubuntu

MAINTAINER Dinesh Kumar

LABEL BASE_IMAGE="ubuntu"
LABEL JAVA_VERSION="11"

WORKDIR /docker/java/
COPY target/*.jar /docker/java/application.jar

EXPOSE 8080
CMD ["java", "-jar", "application.jar"]