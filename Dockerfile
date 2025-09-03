FROM openjdk:8
EXPOSE 8080
ADD target/devops-automation-final.jar devops-automation-final.jar
ENTRYPOINT ["java","-jar","/devops-automation-final.jar"]