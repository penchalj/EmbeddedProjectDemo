pipeline {
    agent any

    environment {
        APP_NAME = "my-embedded-app"
    }

    stages {
        stage('Checkout') {
            steps {
                // Jenkins automatically checks out the code if the job is linked to Git
                checkout scm
            }
        }

        stage('Build') {
            steps {
                echo 'Compiling embedded binary...'
                sh 'mkdir -p build'
                sh 'make build'
            }
        }

        stage('Test') {
            steps {
                echo 'Running Unit Tests...'
                sh 'make test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying to Staging...'
                // Using ${WORKSPACE} ensures the shell finds the file
                sh "cp ${WORKSPACE}/build/app.elf /tmp/last_successful_build.elf"
            }
        }

        stage('Release') {
            steps {
                echo 'Archiving Artifacts...'
                // This makes the file downloadable directly from the Jenkins UI
                archiveArtifacts artifacts: 'build/app.elf', fingerprint: true
            }
        }
    }
}

