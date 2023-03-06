FROM openjdk:11-jdk

ARG JAR_FILE=target/simple-app.jar

ADD ${JAR_FILE} app.jar

EXPOSE 8080

ENTRYPOINT [ "java", "-jar", "/app.jar" ]

HEALTHCHECK --interval=30s --timeout=5s --start-period=30s --retries=3 \ 
    CMD curl --fail --silent --request GET http://localhost:8080/actuator/health | grep UP || exit 1