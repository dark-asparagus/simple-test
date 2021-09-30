pipeline {
  agent any
  stages {
    stage('SCM') {
      steps {
        sh 'echo Hello'
        git(url: 'https://github.com/dark-asparagus/simple-test', branch: 'master', changelog: true)
      }
    }

    stage('Build') {
      steps {
        sh '''
echo "make"'''
      }
    }

  }
}