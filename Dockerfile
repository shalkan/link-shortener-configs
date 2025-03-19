FROM amazoncorretto:17.0.7-alpine

COPY ./link-shortener*.jar ./link-shortener.jar
COPY ./application-release.yml ./application-release.yml

ENV TZ=Europe/Moscow

EXPOSE 8080

CMD ["java", "-jar", "./link-shortener.jar"]