pipeline {
    agent {
        label 'dind'
    }

    tools {
        maven 'mvn-latest'
        docker 'docker-latest'
    }

    stages {
        stage('Build App') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Build Image') {
            steps {
                script {
                    def pom = readMavenPom file: 'pom.xml'
                    def imageName = "${pom.name}:${pom.version}"
                    sh "docker image build -t ${imageName} ."
                    sh 'docker image ls -a'
                }
            }
        }
    }
}
