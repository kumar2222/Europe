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
post {
  always{
  
     echo 'always success '
  }}
