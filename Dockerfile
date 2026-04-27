FROM eclipse-temurin:17-jdk

WORKDIR /app

COPY . .

# 🔥 ADD THIS LINE (very important)
RUN chmod +x mvnw

RUN ./mvnw clean package -DskipTests

ENTRYPOINT ["java", "-jar", "target/*.jar"]