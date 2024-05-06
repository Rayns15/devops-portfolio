pipeline {
    agent any
    environment {
        CI = 'true'
    }
    stages {
        stage('build docker image'){
            steps{
                sudo docker build . -t Devops-portfolio
            }
        }
        stage('deploy container'){
            steps{
                sudo docker run -t -p 8080:8001 Devops-portfolio
            }
        }
    }


