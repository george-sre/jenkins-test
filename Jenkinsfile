pipeline {
    
    // Disable ConcurrentBuilds
    options { disableConcurrentBuilds() }
    
    environment {
        TAG_NAME = "${env.BRANCH_NAME}"
    }

    agent { label "node-team1" } // Change to your own team's node
    
    stages {
        stage("BUILD IMAGE") {
            steps {
                sh 'python --version'
                sh 'docker build -t test .'
            }
        }
    }
}
