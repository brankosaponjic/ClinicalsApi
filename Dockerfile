FROM openjdk:8
ADD target/clinicalsapi-0.0.1-SNAPSHOT.jar clinicalsapi-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","clinicalsapi-0.0.1-SNAPSHOT.jar"]