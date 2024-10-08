FROM openjdk:24-jdk-slim
RUN apt update

RUN apt install -y iputils-ping

WORKDIR /app

COPY target/api-gateway-hospital-management-docker-image-0.0.1-SNAPSHOT.jar /app/api-gateway.jar

CMD ["java","-jar","/app/api-gateway.jar"]

# docker build -t api-gateway:latest -f dockerfile .
# docker run -dit -d -p 8080:8080 --name api-gateway --network hospital-management-network  api-gateway:latest