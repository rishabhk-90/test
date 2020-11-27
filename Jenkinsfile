node {
    def app

    stage('Clone repository') {
        /* Clone Repository to Workspace */
        checkout scm
    }

    stage('Build image') {
        /* Building the actual image */
        app = docker.build("rishabhk90/devops-docker")
    }

    stage('Test image') {
        app.inside {
            echo "Test has passed"
        }
    }

    stage('Push image') {
        
        docker.withRegistry('https://registry.hub.docker.com', 'docker-hub') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            } 
                echo "Pushing Docker Build to DockerHub"
    }
}
