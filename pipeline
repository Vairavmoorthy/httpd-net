pipeline {
  agent any

  stages {
      stage('Checkout') {
          steps {
              // Clone the Git repository containing the Dockerfile
              git  'https://github.com/your/repository.git'
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
