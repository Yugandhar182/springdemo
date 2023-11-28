FROM adoptopenjdk/openjdk11:alpine


# Add the service itself
ARG JAR_FILE="myservice-1.0.0.jar"
RUN apk add maven
WORKDIR /app
COPY . /app/
RUN mvn -f /app/pom.xml clean install -DskipTests
WORKDIR /app
RUN cp target/${JAR_FILE} /usr/share/${JAR_FILE}

ENTRYPOINT ["java", "-jar", "/usr/share/myservice-1.0.0.jar"]
------ end snip -------
