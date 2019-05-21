pipeline {

    agent { label "node-team1" } // Change to your own team's node
    
    stages {
    
        stage("THE FIRST STAGE") {
            steps {
                echo 'THE FIRST STAGE'
            }
        }
        
        stage("PARALLEL TESTS") {
            
            parallel {
                
                stage("PARALLEL TEST 1") {
                    steps {
                        echo 'PARALLEL TEST 1'
                    }
                }

                stage("PARALLEL TEST 2") {
                    steps {
                        echo 'PARALLEL TEST 2'
                    }
                }

                stage("PARALLEL TEST 3") {
                    steps {
                        echo 'PARALLEL TEST 3'
                    }
                }

                stage("PARALLEL TEST 4") {
                    steps {
                        echo 'PARALLEL TEST 4'
                    }
                }
            }
        }

        stage("THE FINAL STAGE") {
            steps {
                echo 'THE FINAL STAGE'
            }
        }
    }
}
