pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Cloning the repository
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Build the Docker image using the Dockerfile in the repository
                    sh 'docker build -t poojiofc/docker .'
                }
            }
        }

        stage('Push to Docker Hub') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'Docker', passwordVariable: 'DOCKERHUB_PASSWORD', usernameVariable: '801ca630-3725-4ea2-a3d2-521ba328be1e')]) {
                        // Login to Docker Hub
                         sh "docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASSWORD"

                        // Push the Docker image to Docker Hub
                        sh 'docker push poojiofc/docker'
                    }
                }
            }
        }
    }

}
