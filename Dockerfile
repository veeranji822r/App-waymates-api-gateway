FROM eclipse-temurin:21-jre-alpine
RUN addgroup -S waymates && adduser -S waymates -G waymates -u 10001
WORKDIR /app
COPY --chown=waymates:waymates target/app-waymates-api-gateway-0.0.1-SNAPSHOT.jar /app/application.jar
USER waymates
ENTRYPOINT ["java", "-jar", "/app/application.jar"]
