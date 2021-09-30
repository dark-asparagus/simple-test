pipeline {
  agent any
  stages {
    stage('SCM') {
      steps {
        sh 'echo Hello'
      }
    }

    stage('Build') {
      parallel {
        stage('Build') {
          steps {
            sh '''
echo "make"'''
          }
        }

        stage('') {
          steps {
            sh 'echo Ni-How'
          }
        }

      }
    }

    stage('Test') {
      steps {
        echo 'Test'
      }
    }

    stage('Deploy') {
      steps {
        echo 'deploy'
      }
    }

  }
}