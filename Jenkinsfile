pipeline { 

  environment { 

      registry = "banalam/demo11_05_2022" 

      registryCredential = 'banalam_id' 

      dockerImage = '' 

  }

  agent any 

  stages { 

      stage('Cloning our Git') { 

          steps { 

              git 'https://github.com/kumar2222/Europe.git' 

          }

      } 

      stage('Building our image') { 

          steps { 

              script { 

                  dockerImage = docker.build registry + ":$BUILD_NUMBER" 

              }

          } 

      }

      stage('Deploy our image') { 

          steps { 

              script { 

                  docker.withRegistry( '', registryCredential ) { 

                      dockerImage.push() 

                  }

              } 

          }

      } 

      stage('Cleaning up') { 

          steps { 

              sh "docker rmi $registry:$BUILD_NUMBER" 

          }

      } 

  }

}


