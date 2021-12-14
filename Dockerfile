FROM java:8u111-jre-alpine
RUN apk update && apk add bash
WORKDIR /app
COPY api-1.0-SNAPSHOT-fat.jar /app/api-1.0-SNAPSHOT-fat.jar
COPY conf /app/conf
EXPOSE 9090
CMD ["java", "-jar", "/app/api-1.0-SNAPSHOT-fat.jar"] 

