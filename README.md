# App-waymates-api-gateway

Routes group APIs through Eureka discovery and Spring Cloud LoadBalancer.

This is an independent Git repository with its own Maven wrapper, build, executable JAR and Docker image. Requires JDK 21.

From this checkout:

```bash
./mvnw verify
java -jar target/app-waymates-api-gateway-0.0.1-SNAPSHOT.jar
```

On Windows use `.\mvnw.cmd verify`. The default host port is 8080.

Start Eureka, Config Server and group-service instances first. The gateway routes `/api/v1/groups/**` to `lb://app-waymates-group-service`.

Keep the four checkouts side by side under one parent folder. Full local connection and deployment instructions live in the sibling `App-waymates-config-server/README.md`; its `deployment/docker-compose.yml` coordinates the independent images.
