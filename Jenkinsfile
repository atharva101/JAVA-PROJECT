 pipeline {
         agent any
         tools{
            maven 'Apache Maven 3.3.9'
            jdk 'jdk1.8.0_221'
            }
     

        environment{
            
            dockerImage =''
            registry = '4567894/java-project'
            registryCredential = 'docker1'
            
        }

        stages {
            stage ('Clean') {
                steps {
                    bat 'mvn clean'
                    }
                }
            stage ('Test') {
                steps {
                    bat 'mvn test'
                    }
                }
            stage ('Build') {
                steps {
                    bat 'mvn install'
                }
            }
        
        /*----------
        stage ('Sonar Analysis'){
            steps {
             withSonarQubeEnv('sonarqube') {
                    // Optionally use a Maven environment you've configured already
                    
                         bat 'mvn sonar:sonar \
                            -Dsonar.projectKey=pipelineproject \
                            -Dsonar.host.url=http://localhost:9000 \
                            -Dsonar.login=24cb8638bb2079173e68fc29d15643d3b4cd5406'
                    
                          }
                      }
            }
        stage("Upload artifact") {
            steps {
                rtUpload(
                serverId: 'artifactory1',
                spec: '''{
                    
                     "files": [
                                {
                                 "pattern": "target/*.war",
                                 "target": "PipelineProject/"
                                }
                            ]
                        }'''
                     )
                 }
             }
        ----------------- */
        
        stage('Build Docker Image'){
            
            steps{
                  
                  script{
                      
                      dockerImage = docker.build registry
                  }
                  
                  
            }
        }   
         stage('Push Docker Image'){
            
            steps{
               script { 
24
                    docker.withRegistry( '', registryCredential ) { 
25
                        dockerImage.push() 
26
                    }
               }
                  
            }
        }
        
        

        

        

     }

        


        
}
