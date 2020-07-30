FROM openjdk:8-jdk-alpine
VOLUME /tmp
EXPOSE 8080
RUN mkdir /app
WORKDIR /app
COPY target/demo-0.0.1-SNAPSHOT.jar to /app/demo-0.0.1-SNAPSHOT.jar 
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]
