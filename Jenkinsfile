pipeline {
    agent any  
stages {
stage("branches") { 
        when { 
        expression { 
             BRANCH_NAME == 'master' || BRANCH_NAME == 'subbranch'
                   }
             }
             
       }
	   steps {
        echo 'run this stage - when branch is not equal to master'
    }
}
}
