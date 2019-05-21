pipeline {
    
    agent { label "node-team1" } // Change to your own team's node
    
    stages {
    
        stage("STAGE build") {
            steps {
                echo 'STAGE build'
            }
        }
        
        stage("test1") {
            steps {
                echo 'test1'
            }
        }

        stage('test2') {
            steps {
                echo 'test2'
            }
        }


		stage('deploy') {
            steps {
                echo 'deploy'
            }
        }

    }
}
