node {
    stage('Checkout') {
        git 'https://github.com/yourusername/yourrepository.git'
    }

    stage('Build Docker Image') {
        sh 'docker build -t yourapp .'
    }

    stage('Run Tests') {
        sh 'docker run yourapp npm test'
    }

    stage('Push to Registry') {
        withCredentials([string(credentialsId: 'dockerhub-credentials', variable: 'DOCKERHUB_PASSWORD')]) {
            sh 'docker login -u yourusername -p $DOCKERHUB_PASSWORD'
            sh 'docker tag yourapp yourusername/yourapp:latest'
            sh 'docker push yourusername/yourapp:latest'
        }
    }

    stage('Deploy') {
        sh 'docker-compose up -d'
    }

    post {
        always {
            echo 'CI/CD pipeline finished.'
        }
    }
}
