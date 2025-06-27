pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/tu-usuario/clamav-demo.git'  // Cambialo por tu repo
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
