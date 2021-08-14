pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building containers..'
                  sh 'docker compose version'
                  sh 'docker compose build'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}

