pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                // Clone the Git repository containing the Dockerfile
                sh 'git clone -b main https://github.com/Vairavmoorthy/httpd-net.git'
            }
        }


        stage('Build Docker Image') {
            steps {
                // Build the Docker image
                sh 'echo docker image found'
            }
        }



        stage('Deploy to Remote Machine') {
            steps {
                // Load SSH credentials
                sshagent(['38880b8b-9bf4-4dc5-bf28-4d7d74665a4b']) {
                    // Run SSH commands on the remote machine
                    sshCommand remote: '3.110.90.211', command: 'docker pull webapp'
                    sshCommand remote: '3.110.90.211', command: 'docker run -d -p 9090:80 webapp'
                }
            }
        }
    }
}
