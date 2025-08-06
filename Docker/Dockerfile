FROM eclipse-temurin:17-jdk
RUN useradd -m -d /spc -s /bin/bash sahil
USER sahil
ADD --chown=sahil:sahil https://referenceappslt.s3.ap-south-1.amazonaws.com/spring-petclinic-3.3.0-SNAPSHOT.jar /spc/spring-petclinic-3.3.0-SNAPSHOT.jar 
CMD ["java","-jar","/spc/spring-petclinic-3.3.0-SNAPSHOT.jar"]
EXPOSE 8080