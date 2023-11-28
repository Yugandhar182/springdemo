FROM openjdk:11
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/spring-boot-docker.jar
COPY --chown=appuser:appuser target/**.jar /home/appuser/app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
