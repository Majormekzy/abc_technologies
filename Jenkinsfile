pipeline{  
    agent any  
    tools {  
        maven "maven 3.8.6"  
    }  
    environment{ 
        DOCKERHUB_CREDENTIALS = credentials("Dockerhub_Credentials") 
    } 
    stages{  
       stage('1. Git Clone'){  
           steps{  
               git branch: 'main', url: 'https://github.com/Majormekzy/abc_technologies.git'  
           }  
       }   
       stage('2. Compile SRC'){  
           steps{  
               sh "mvn compile"  
           }  
       }  
       stage('3. Testing'){  
           steps{  
               sh "mvn test"  
           }  
       }  
           stage('4.Package'){  
           steps{  
               sh "mvn clean package"  
           }  
       }  
    stage('5.Build application'){ 
        steps{ 
            sh "docker rmi -f majormekzy/abc_technologies" 
            sh "docker rm -f abc-tech-app" 
            sh "docker build -t majormekzy/abc_technologies ." 
            sh "docker run --name abc-tech-app -d -p 2000:8080 majormekzy/abc_technologies" 
        } 
    } 
    stage("7. Pushtodockerhub"){ 
        steps{ 
        sh "echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin" 
        sh "docker push majormekzy/abc_technologies:latest" 
        } 
    }
    }
}
