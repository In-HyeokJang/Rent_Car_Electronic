FROM openjdk:11 AS builder

COPY gradlew .
COPY gradle gradle
COPY build.gradle .
COPY settings.gradle .
COPY src src

RUN chmod +x ./gradlew
RUN ./gradlew bootWar

FROM openjdk:11

COPY --from=builder build/libs/*.war app.war
ENTRYPOINT ["java","-jar","-Dserver.port=9090","app.war"]