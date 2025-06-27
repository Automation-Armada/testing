pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Automation-Armada/testing.git', credentialsId: 'github-token-cred'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker --version'
                bat 'dir'
                bat 'docker build -t clamav-demo .'
                }
            }
        }

        stage('Run Antivirus Scan') {
            steps {
                bat 'docker run --rm clamav-demo'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Despliegue simulado exitoso 🚀'
            }
        }
    }
}
