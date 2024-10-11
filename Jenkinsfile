pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/yourusername/yourrepository.git'
            }
        }

        stage('Build') {
            steps {
                sh 'docker build -t yourapp .'
            }
        }

        stage('Test') {
            steps {
                sh 'docker run yourapp npm test'
            }
        }

        stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }

    post {
        always {
            echo 'Pipeline completed.'
        }
    }
}
