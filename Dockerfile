FROM gradle:6.3.0-jdk8 AS build
USER root
RUN mkdir app
COPY src/ /app/src/
COPY build.gradle /app/
COPY settings.gradle /app/
WORKDIR /app
RUN gradle bootJar
RUN ls
RUN ls build
RUN ls build/libs

FROM openjdk:8-jdk-alpine
COPY --from=build /app/build/libs/*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]