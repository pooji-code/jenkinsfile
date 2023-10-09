pipeline {
         agent any
         }

environment {
    // Define environment variables as needed
    DOCKER_IMAGE_NAME = 'poojiofc/docker-image'
    DOCKER_IMAGE_TAG = 'latest'
}

stages {
    stage('Checkout') {
        steps {
            // Check out your source code from your version control system (e.g., Git)
            checkout scm
        }
    }

    stage('Build and Push Docker Image') {
    steps {
        script {
            docker.build('poojiofc/docker-image')
            docker.withRegistry('https://your-docker-registry-url', '801ca630-3725-4ea2-a3d2-521ba328be1e') {
                docker.image('poojiofc/docker-image').push()
            }
        }
    }
}

post {
    success {
        // Actions to take on successful image build and push (e.g., notifications)
        echo 'Docker image build and push were successful!'
    }
    failure {
        // Actions to take on image build or push failure (e.g., notifications, rollback)
        echo 'Docker image build or push failed!'
    }
}
}
         
