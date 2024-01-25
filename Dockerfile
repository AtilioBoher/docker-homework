FROM openjdk:17-jdk-alpine
EXPOSE 8080
ADD /target/dockerExample-1.0-SNAPSHOT.jar dockerExample-1.0-SNAPSHOT.jar
ENTRYPOINT ["/bin/sh", "-c", "echo 'Hello world from the Docker container!' && java -cp dockerExample-1.0-SNAPSHOT.jar com.solvd.Main"]