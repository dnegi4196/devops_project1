pipeline {
  agent any

  stages {

    stage('Clone Code') {
      steps {
        git 'https://github.com/your-repo.git'
      }
    }

    stage('Install Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Build Docker Image') {
      steps {
        sh 'docker build -t devops-app .'
      }
    }

    stage('Deploy Container') {
      steps {
        sh '''
        docker stop devops-app || true
        docker rm devops-app || true
        docker run -d -p 3000:3000 --name devops-app devops-app
        '''
      }
    }

  }
}
