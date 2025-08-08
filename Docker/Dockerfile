FROM eclipse-temurin:17-jdk
RUN useradd -m -d /tekken -s /bin/bash og
WORKDIR /tekken
USER og
ADD --chown=og:og https://referenceappslt.s3.ap-south-1.amazonaws.com/spring-petclinic-3.3.0-SNAPSHOT.jar /tekken/spring-petclinic-3.3.0-SNAPSHOT.jar 
CMD ["java","-jar","/tekken/spring-petclinic-3.3.0-SNAPSHOT.jar"]
EXPOSE 8080