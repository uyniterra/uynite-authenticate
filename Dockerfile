FROM centos:8
FROM openjdk:8
EXPOSE 8080
EXPOSE 8081
EXPOSE 8082
EXPOSE 8083
EXPOSE 8084
EXPOSE 8085
EXPOSE 8086
EXPOSE 8087


RUN mkdir target
ADD uynite-authenticate-0.0.7-SNAPSHOT.jar target/uynite-authenticate-0.0.7-SNAPSHOT.jar
ADD UnitityPost-0.0.1-SNAPSHOT.jar target/UnitityPost-0.0.1-SNAPSHOT.jar
ADD UnitityFriend-0.0.1-SNAPSHOT.jar target/UnitityFriend-0.0.1-SNAPSHOT.jar
ADD UnitityLogin-0.0.1-SNAPSHOT.jar target/UnitityLogin-0.0.1-SNAPSHOT.jar
ADD UnitityProfile-0.0.1-SNAPSHOT.jar target/UnitityProfile-0.0.1-SNAPSHOT.jar
ADD UnitityEvent-0.0.1-SNAPSHOT.jar target/UnitityEvent-0.0.1-SNAPSHOT.jar
ADD Unitityinstance-0.0.1-SNAPSHOT.jar target/Unitityinstance-0.0.1-SNAPSHOT.jar
ADD UnititySponsorde-0.0.1-SNAPSHOT.jar target/UnititySponsorde-0.0.1-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","target/uynite-authenticate-0.0.7-SNAPSHOT.jar"]
ENTRYPOINT ["java","-jar","target/UnitityPost-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java","-jar","target/UnitityFriend-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java","-jar","target/UnitityLogin-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java","-jar","target/UnitityProfile-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java","-jar","target/UnitityEvent-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java","-jar","target/Unitityinstance-0.0.1-SNAPSHOT.jar"]
ENTRYPOINT ["java","-jar","target/UnititySponsorde-0.0.1-SNAPSHOT.jar"]

