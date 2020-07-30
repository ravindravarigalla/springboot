FROM adoptopenjdk/openjdk8:ubi
VOLUME /tmp
EXPOSE 8080
COPY ./demo-0.0.1-SNAPSHOT.jar /demo-0.0.1-SNAPSHOT.jar
CMD ["java -jar /demo-0.0.1-SNAPSHOT.jar"]

