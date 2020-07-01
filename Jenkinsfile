// Jenkinsfile
String credentialsId = 'AwsCredentials'


  stage('checkout') {
    node {
      cleanWs()
      checkout scm
    }
  }

node {
      withCredentials([[
        $class: 'AmazonWebServicesCredentialsBinding',
        credentialsId: credentialsId,
        accessKeyVariable: 'AWS_ACCESS_KEY_ID',
        secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]

stage('init') {
       steps {
           sh 'terraform init'
       }
     }
        }
        
