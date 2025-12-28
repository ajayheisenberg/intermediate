pipeline {
    agent any

    stages {
        stage('Pull Code') {
            steps {
                git branch: 'master', url: 'https://github.com/ajayheisenberg/intermediate'
            }
        }

        stage('Build') {
            steps {
                echo "Building project..."
            }
        }

        stage('Deploy') {
            steps {
                echo "Deployed successful..."
            }
        }
    }

    post {
        success {
            echo "Deployment successful!"
        }
        failure {
            echo "Something went wrong!"
        }
    }
}
