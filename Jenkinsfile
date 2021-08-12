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
        sh '''node server.js &
curl 10.100.102.201:8081
if [[ "x$?" == "x0" ]];
then    echo good;
else exit 1;
fi


'''
      }
    }

  }
}