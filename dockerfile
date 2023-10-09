image : pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    // Build a Docker image using a specified Dockerfile
                    sh 'docker build -t my-docker-image:latest .'
                }
            }
        }
    }
}
