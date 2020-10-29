pipeline {
  environment {
    registry = "rishabhk90/devops-certification"
    registryCredential = 'dockerhub1'
  }
  agent any
  stages {
        stage('Building image') {
        steps{
            script {
            dockerImage = docker.build registry + ":$BUILD_NUMBER"
            }
        }
        }

        stage('Deploy Image') {
        steps{
            script {
            docker.withRegistry( '', 'dockerhub1' ) {
                dockerImage.push()
            }
            }
        }
        }
        stage('Execute Image'){
        steps{
          script {
            def customImage = docker.build("rishabhk90/devops-certification:${env.BUILD_NUMBER}")
            customImage.inside {
            sh 'echo This is the code running inside the container.'
            }
          }
        } 
    }
}
}

   
