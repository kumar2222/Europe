pipeline {
    agent any  
stages {
stage("branches") { 
        when { 
        stage { 
             BRANCH_NAME == 'master' || BRANCH_NAME == 'subbranch'
                   }
             }
       }
}
}
