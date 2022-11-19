
def COLOR_MAP = [
    'SUCCESS': 'good',
    'FAILURE': 'danger',
]
pipeline {
    agent any    
    stages {
        stage('Git checkout') {
            steps {
                echo 'Cloning project codebase...'
                git branch: 'main', url: 'https://github.com/SedekieDevOps1010/airbnb-infrastructure.git'
                sh 'ls'
            }
        }         
        
        stage('verify terraform version') {
            steps {
                echo 'verifying the terrform version...'
                sh 'terraform --version'            }
        }        
        
        stage('Terraform init') {
            steps {
                echo 'Initiliazing terraform project...'
                sh 'terraform init'            }
        }        
        
        stage('Terraform validate') {
            steps {
                echo 'Code syntax checking...'
                sh 'terraform validate'            }
        }        
        
        stage('Terraform plan') {
            steps {
                echo 'Terraform plan for the dry run...'
                sh 'terraform plan'            }
        }        
        
        
        stage('checkov scan') {
            steps {sh """
             pip3 install -U checkov
             checkov -d . --skip-check CKV_AWS_79 --skip-check CKV2_AWS_41
             """
                  
                          }
        }  
        
        stage('Manual approval') {
            steps { input 'Approval required for deployment'            }
        }         
        
        stage('Terraform apply') {
            steps {
                echo 'Terraform apply...'
                sh 'terraform apply --auto-approve'            }
        }   }    
        
        post {
            always {
                echo 'I will always say Hello again!'
                slackSend channel: '#infra-pipeline-alart', color: COLOR_MAP[currentBuild.currentResult], message: "*${currentBuild.currentResult}:* Job ${env.JOB_NAME} build ${env.BUILD_NUMBER} \n More info at: ${env.BUILD_URL}"
            }
            
        } 
        
    }