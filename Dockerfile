#
# Build stage
#
FROM maven:3.8.4-openjdk-17-slim AS build
WORKDIR /build
COPY pom.xml .
COPY src ./src
RUN mvn clean package

#
# Package stage
#
FROM openjdk:17-slim
COPY --from=build /build/target/*.jar /app/petstoreorderservice.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/petstoreorderservice.jar"]
