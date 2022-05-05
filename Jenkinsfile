pipeline {
    agent any

    stages {
        
       stage('Hello') {
            steps {
                echo 'Hello World'
            }
        }
        
}
}
stages {
stage('branches') { 
        when { 
        expression { 
             BRANCH_NAME == 'master' || BRANCH_NAME == 'subbranch'
                   }
             }
       }
}

