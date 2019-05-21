pipeline {

    agent { label "node-team1" } // Change to your own team's node

    stages {
        stage("WHEN branch: using-when-to-control-workflow") {
            when { branch 'using-when-to-control-workflow' }
            steps {
                echo 'something happened if this build is using-when-to-control-workflow Branch'
            }
        }
        
        stage("WHEN branch: Dev") {
            when { branch 'Dev' }
            steps {
                echo 'something happened if this build is Dev Branch'
            }
        }
        
        stage("WHEN branch: Stage") {
            when { branch 'Stage' }
            steps {
                echo 'something happened if this build is Stage Branch'
            }
        }
        
        stage("WHEN branch: Pre-Prod") {
            when { branch 'Pre-Prod' }
            steps {
                echo 'something happened if this build is Pre-Prod Branch'
            }
        }
        
        stage("WHEN TEST: anyOf") {
            when { anyOf { branch 'PR-*'; branch 'master' } }
            steps {
                sh 'echo something happened if this build is a PR OR on master Branch'
                // httpRequest authentication: "${HTTP_REQUEST_AUTHENTICATION}", contentType: 'APPLICATION_JSON', httpMode: 'POST', requestBody: "{\"tag\":\"${DR_TAG}\"}", responseHandle: 'NONE', url: "https://sippycup.ops.ww.luoxinshe.cn/api/v1/deployments/test/${DR_APP}"
            }
        }
        
        stage("WHEN TEST: allOf") {
            when { allOf { branch 'master'; environment name: 'SERVICE_NAMESPACE', value: 'test' } }    // We only deploy on test and on master branch
            steps {
                sh 'echo something happened if this build is on master Branch and the SERVICE_NAMESPACE value is test'
            }
        }

        stage('WHEN TEST: changeset') {
            when { changeset "**/*.js" }
            steps {
                echo 'Some change in ./src/changeset.js'
            }
        }
    }
}
