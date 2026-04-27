FROM openjdk:17

WORKDIR /app

COPY . .

RUN ./mvnw clean package -DskipTests

ENTRYPOINT ["java", "-jar", "target/*.jar"]
