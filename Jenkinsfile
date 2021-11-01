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
            echo 'software 1'
            sh '''
echo "make"'''
          }
        }

        stage('software 2') {
          steps {
            sh 'echo Ni-How'
            sh 'echo Ni-How'
          }
        }

      }
    }

    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            echo 'Test'
          }
        }

        stage('test2') {
          steps {
            echo 'test2'
          }
        }

      }
    }

    stage('Deploy') {
      steps {
        echo 'deploy'
      }
    }

    stage('Notify') {
      steps {
        echo 'email'
      }
    }

  }
}
