# Including the Base image

FROM openjdk:21

# Who is the Author (depricated) instead of LABEL

#MAINTAINER "ASHISH"

LABEL Author="ASHISH"

# Copy is used copy the jar file from HOST Machine to Conatiner machine  
# After building project with maven in target folder jar file will be created
# usr/app is container repo were jar file will be copied 

COPY target/spring-boot-docker-app.jar /usr/app

# To change the working directory to conatiner directory to perform command

WORKDIR /usr/app

# To expose conatainer port

EXPOSE 8080
 
# Entrypoint is nothing but act as CMD but in CMD can be overwrite and Entrypoint can't be 
# executing jar file inside the container, so executing command jar file name

ENTRYPOINT [ "java" , "jar" , "spring-boot-docker-app.jar"]