pipeline {
    agent any

    
stages {
stage('branches') { 
        when { 
        expression { 
             BRANCH_NAME == 'master' || BRANCH_NAME == 'subbranch'
                   }
             }
       }
}
}
