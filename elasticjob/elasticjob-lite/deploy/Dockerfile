FROM openjdk:13-jdk-alpine3.8

ENV PROFILE_ACTIVE=dev
ENV SERVICE_NAME="elasticjob"

RUN ln -snf /usr/share/zoneinfo/Asia/Shanghai  /etc/localtime && echo Asia/Shanghai > /etc/timezone

WORKDIR /workspace/${SERVICE_NAME}

COPY ${SERVICE_NAME}-0.0.1-SNAPSHOT.jar /workspace/app.jar

ENTRYPOINT ["java", "-jar", "/workspace/app.jar"]