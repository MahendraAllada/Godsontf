pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {
        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('terraform clone') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: '2fb7dff5-dcb5-4e2f-94d0-90ef7ecc49a6', url: 'https://github.com/MahendraAllada/Godsontf.git']]])
            }
        }
        stage('key'){
            steps {
                sh label: '', script: ''' sed -i \"s/user/$access_key/g\" /var/lib/jenkins/workspace/terramahi/variables.tf
sed -i \"s/password/$secret_key/g\" /var/lib/jenkins/workspace/terramahi/variables.tf
sed -i \"s/t2.micro/$instance_type/g\" /var/lib/jenkins/workspace/terramahi/variables.tf
sed -i \"s/10/$instance_size/g\" /var/lib/jenkins/workspace/terramahi/ec2.tf'''
sed -i \"s/ca-central-1/$instance_region/g\" /var/lib/jenkins/workspace/terramahi/variables.tf
sed -i \"s/ca-central-1a/$subnet_zone/g\" /var/lib/jenkins/workspace/terramahi/variables.tf
sed -i \"s/mahicanada/$key_pair/g\" /var/lib/jenkins/workspace/terramahi/variables.tf
sed -i \"s/ami-054362537f5132ce2/$ami_Id/g\" /var/lib/jenkins/workspace/terramahi/vpc.tf
'''
                  }
            }
            
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'terraform apply -auto-approve'
            }
        }
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
