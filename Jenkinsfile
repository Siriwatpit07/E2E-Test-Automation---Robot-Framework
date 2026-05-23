pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git 'https://github.com/Siriwatpit07/E2E-Test-Automation---Robot-Framework.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                bat 'pip install -r requirements.txt'
            }
        }

        stage('Run Robot Tests') {
            steps {
                bat 'py -m robot -d results tests/'
            }
        }

    }
}