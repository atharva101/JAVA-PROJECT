FROM openjdk

EXPOSE 8083

ADD target/testapp.jar  testapp.jar

ENTRYPOINT ["java", "-jar", "testapp.jar"]
