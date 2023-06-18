pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the Git repository containing the Dockerfile
                sh 'git clone -b main git  https://github.com/your/repository.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    def dockerImage = docker.build('webapp', './home/ubuntu/Dockerfile')
                }
            }
        }



        stage('Deploy to Remote Machine') {
            steps {
                // Load SSH credentials
                sshagent(['ubuntu']) {
                    // Run SSH commands on the remote machine
                    sshCommand remote: '3.110.90.211', command: 'docker pull webapp'
                    sshCommand remote: '3.110.90.211', command: 'docker run -d -p 9090:80 webapp'
                }
            }
        }
    }
}
