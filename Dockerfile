FROM openjdk

EXPOSE 8083

ADD target/testproject1.jar  testproject1.jar

ENTRYPOINT ["java", "-jar", "testproject1.jar"]
