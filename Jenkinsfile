pipeline {
    agent {
        label 'jdk11'
    }
    tools {
        maven 'mvn-latest'
    }

    stages {
        stage('Build App') {
            steps {
                sh 'mvn clean package'
            }
        }
    }
}
