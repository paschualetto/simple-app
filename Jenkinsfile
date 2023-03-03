pipeline {
    agent {
        label 'maven'
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
