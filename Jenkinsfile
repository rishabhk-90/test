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
            dockerImage = docker.build registry + ":${env.BUILD_NUMBER}"
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
            
            dockerImage.inside {
            sh 'echo "This is the code running inside the container."'
            }
          }
        } 
    }
}
}

   
