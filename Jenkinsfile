pipeline {
  agent any
  stages {
    stage('Teraform init') {
      steps {
        sh 'cd instance'
        sh 'terraform init'
      }
    }
    stage('') {
      steps {
        sh 'terraform apply'
      }
    }
  }
}