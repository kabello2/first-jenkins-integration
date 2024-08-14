pipeline{
    agent any
    tools{
        maven 'maven'
    }
    stages{
        stage('Build maven project'){
            steps{
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/kabello2/first-jenkins-integration']])
                bat 'mvn clean install'
            }
        }
        stage('Build docker image'){
            steps{
                script{
                    bat 'docker build -t javadevguru/automated-integration .'
                }
            }
        }
    }
}