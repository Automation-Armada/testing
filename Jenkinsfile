pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git url: 'https://github.com/tu-usuario/clamav-demo.git', credentialsId: 'bfcc6126-4059-4a92-b9d1-d7b98d9e0b68'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t clamav-demo .'
            }
        }

        stage('Run Antivirus Scan') {
            steps {
                sh 'docker run --rm clamav-demo'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Despliegue simulado exitoso 🚀'
            }
        }
    }
}
