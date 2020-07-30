FROM openjdk:8-jdk-alpine  
ENV APP_FILE demo-0.1.0-SNAPSHOT.jar  
ENV APP_HOME /usr/app  
EXPOSE 8000  
COPY target/demo-0.1.0-SNAPSHOT.jar /demo-0.1.0-SNAPSHOT.jar 
WORKDIR $APP_HOME  
ENTRYPOINT ["sh", "-c"]  
CMD ["exec java -jar /demo-0.1.0-SNAPSHOT.jar"]
