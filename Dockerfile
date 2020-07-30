FROM openjdk:8-jdk-alpine    
EXPOSE 8000 
RUN mkdir /app
COPY target/*.jar /app/*.jar 
WORKDIR $APP_HOME  
ENTRYPOINT ["sh", "-c"]  
CMD ["exec java -jar /demo-0.1.0-SNAPSHOT.jar"]
