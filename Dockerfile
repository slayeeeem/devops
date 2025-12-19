FROM eclipse-temurin:17-jre

WORKDIR /app

# ⚠️ Vérifie le nom exact du JAR généré par Maven
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar


EXPOSE 8089

ENTRYPOINT ["java", "-jar", "app.jar"]