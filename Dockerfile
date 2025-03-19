FROM amazoncorretto:17.0.14

COPY ./build/libs/link-shortener-1.0-SNAPSHOT.jar ./link-shortener.jar

#ENV SPRING_PROFILES_ACTIVE=docker
ENV TZ=Europe/Moscow

EXPOSE 8080

CMD ["java", "-jar", "./link-shortener.jar"]