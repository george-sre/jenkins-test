pipeline {
    
    // Disable ConcurrentBuilds
    options { disableConcurrentBuilds() }

    agent { label "node-team1" } // Change to your own team's node
    
    triggers {
        cron(env.BRANCH_NAME == 'try-schedule-workflow' ? '1 2 */1 * *' : '')
    }
    
    stages {
        stage('Debug ON') {
            steps {
                sh 'sleep 30'
            }
        }
    }
}
