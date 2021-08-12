pipeline {
  agent any
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

  }
}