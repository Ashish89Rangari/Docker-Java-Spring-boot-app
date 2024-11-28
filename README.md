# Docker-Java-Spring-boot-app
Upload and Download a file app (Docker-Java-Spring-boot-app)

  
# Simple Spring Boot with Docker Application#

Build the project using maven

```bash
$ mvn clean package
```
Build the image using the following command

```bash
$ docker build -t spring-boot-rest-api .
```
Run the Docker container using the command shown below.

```bash
$ docker run -d -p 8080:8080 spring-boot-rest-api
```
# For windows
The application will be accessible at http://localhost:8080/

# For Linux
The application will be accessible at http://public-ip:8080/
