pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t islem/student-management:1.0 .'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    sh 'docker login -u islem -p $DOCKERHUB_PASSWORD'
                    sh 'docker push islem/student-management:1.0'
                }
            }
        }
    }
}
