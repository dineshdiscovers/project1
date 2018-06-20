pipeline {
  agent any
  stages {
    stage('Teraform init') {
      parallel {
        stage('Teraform init') {
          steps {
            sh 'cd instance'
            sh 'terraform init'
          }
        }
        stage('path') {
          steps {
            sh 'pwd'
          }
        }
      }
    }
    stage('terraform apply') {
      parallel {
        stage('terraform apply') {
          steps {
            sh 'terraform apply'
          }
        }
        stage('list') {
          steps {
            sh 'ls'
          }
        }
      }
    }
  }
}