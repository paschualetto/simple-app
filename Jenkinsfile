pipeline {
    agent {
        label 'terminal'
    }
    tools {
        maven 'mvn-latest'
    }

    stages {
        stage('Build App') {
            steps {
                sh 'mvn clean package'
                sh 'sleep 600'
            }
        }
    }
}
