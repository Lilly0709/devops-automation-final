pipeline {
agent any
tools {
    maven 'MyMaven'
}
stages{
    stage('Build Maven'){
        steps{
            checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/Lilly0709/devops-automation-final.git']])
            bat 'mvn clean install'
        }
    }
    stage('Build Docker Image'){
        steps{
            script{
                bat 'docker build -t lillyfousia/devops-automation-final .'
            }
        }
    }
    stage('Push Docker image to Docker hub'){
        steps{
            script{
                bat 'docker login -u fousia2705@gmail.com -p Diyaa@2015'
                bat 'docker push lillyfousia/devops-automation-final'
            }
        }
    }
}
}