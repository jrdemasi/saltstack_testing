pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building containers..'
                  sh '/usr/local/bin/docker compose version'
                  sh '/usr/local/bin/docker compose build'
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

