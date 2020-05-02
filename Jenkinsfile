pipeline {
    agent {
        docker {
            image 'qaninja/rubywd'
        }
    }
    stages{
    stage('Running Checkout e Build') {
         steps {
            echo 'Checkout e Build'
            git url: "https://github.com/willssan05/aplicacao-nodejs.git",
            branch: 'develop'
        }
    }
    
    stage('Tests') {
         steps {
         echo 'Running regression tests'
         git url: "https://github.com/willssan05/automacao-casa-criativa.git",
         branch: 'master'
         sh 'rm -f Gemfile.lock'
         sh 'bundle install'
         sh 'bundle exec cucumber -p ci'
         }
      }

      stage('Deploy') {
         echo 'Running deploy'
      }
   }
}