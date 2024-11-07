pipeline {
    agent any

    tools {
        maven "maven"
    }

    stages {
        stage('Git checkout') {
            steps {
              
                   git 'https://github.com/JaganPothina/Banking-website.git'
            
                }
            }
        stage('maven build') {
              steps {
              
                     sh "mvn install package"
                }
        }

        stage('Docker build image') {
              steps {
                  
                  sh'sudo docker system prune -af '
                  sh 'sudo docker build -t 9182924985/bank-finance:${BUILD_NUMBER}.0 .'
              
                }
            }
                
        stage('Docker login and push') {
              steps {
                   withCredentials([string(credentialsId: 'docpass', variable: 'docpasswd')]) {
                  sh 'sudo docker login -u 9182924985 -p ${docpasswd} '
                  sh 'sudo docker push 9182924985/bank-finance:${BUILD_NUMBER}.0 '
                  }
                }
        } 
        stage (' configuring Test-server with terraform & ansible and deploying'){
            steps{

                dir('test-server'){
                sh 'sudo chmod 600 DEMOKEY.pem'
                sh 'terraform init'
                sh 'terraform validate'
                sh 'terraform apply --auto-approve'
                }
               
            }
        }

        stage('waitng to start the app') {
              steps {
                  
                  sh ' sleep 40'
                           
                }
            }
       



