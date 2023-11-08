pipeline {
    agent any
    tools {
        // nodejs 'node js' // Use the tool name you configured in Jenkins
        nodejs 'node js'
    }
    environment {
        registry = "405255119935.dkr.ecr.ap-south-1.amazonaws.com"
    }
    stages {
        // stage('Install Dependency') {
        //     steps {
        //         script {
        //             echo 'npm install'
        //             // bat 'npm install'
        //             // sh 'npm install'
                   
        //         }
        //     }
        // }
        stage('Run Tests') {
            steps {
                script {
                    echo "npm run test"
                    sh 'npm test'
                }
            }
        }
        // stage('Build Application') {
        //     steps {
        //         script {
        //             echo "npm run build"
        //             // bat 'npm run build'
        //             sh 'npm run build'
        //         }
        //     }
        // }
        stage('Create Docker Image') {
            steps {
                script {
                    echo 'building docker image'
                    sh 'docker build -t a .'
                    // sh 'docker run -e CI=true a npm test'
                }
            }
        }
        stage('Pushing image to ECR') {
            steps {
                script {
                    // withEnv (["AWS_ACCESS_KEY_ID=${env.Access_key_ID}", "AWS_SECRET_ACCESS_KEY=${env.Secret_access_key}", "AWS_DEFAULT_REGION=${env.aws_region}"]){
                    // bat 'aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 405255119935.dkr.ecr.ap-south-1.amazonaws.com'
                    // bat 'docker tag a:latest 405255119935.dkr.ecr.ap-south-1.amazonaws.com/react_devops:latest'
                    // bat 'docker push 405255119935.dkr.ecr.ap-south-1.amazonaws.com/react_devops:latest'
                    // }
                    echo "pushing image to ecr"
                    }
                }
            }
        }
}

