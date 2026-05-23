pipeline {
    agent any

    stages {

        stage('Install Dependencies') {
            steps {
                bat 'pip install -r requirements.txt'
            }
        }

        stage('Run Robot Tests') {
            steps {
                bat 'python -m robot -d results tests/'
            }
        }

    }

    post {

        always {

            robot outputPath: 'results'

            archiveArtifacts artifacts: 'results/*'

        }
    }
}