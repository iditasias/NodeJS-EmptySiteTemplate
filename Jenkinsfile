pipeline {
  agent {
    node {
      label 'master'
    }

  }
  stages {
    stage('error') {
      steps {
        git(url: 'https://github.com/iditasias/NodeJS-EmptySiteTemplate.git', branch: 'master', changelog: true, poll: true)
      }
    }

    stage('build') {
      steps {
        sh 'npm install'
      }
    }

    stage('test code') {
      steps {
        sh '''chmod +x testcode.sh && ./testcode.sh

'''
      }
    }

  }
}