FROM adoptopenjdk/openjdk11:alpine-jre

ARG APP_NAME="demo"
ARG APP_VERSION="0.0.1-SNAPSHOT"
ARG JAR_FILE="/build/libs/${APP_NAME}-${APP_VERSION}.jar"
RUN npm ci 
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar", "app.jar"]
FROM nginx:latest
COPY --from=builder /app/dist/frontend /usr/share/nginx/html
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf