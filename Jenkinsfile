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
    
    stage('Running Test') {
         steps {
         git url: "https://github.com/willssan05/automacao-casa-criativa.git",
         branch: 'master'
         sh 'rm -f Gemfile.lock'
         sh 'bundle install'
         sh 'bundle exec cucumber -p ci'
         }
      }

    stage('Acceptance') {
        steps {
        echo 'Wait for acceptance by User'
        input(message: 'Go to production?', ok: 'Yes')
        }   
    }
    stage ("Merge pull request") {
    steps { 
        withCredentials([usernamePassword(credentialsId: 'github', usernameVariable: 'ACCESS_TOKEN_USERNAME', passwordVariable: 'ACCESS_TOKEN_PASSWORD',)]) {
            sh "curl -X PUT -d '{\"commit_title\": \"Merge pull request\"}'  https://github.com/willssan05/aplicacao-nodejs.git/pulls/$CHANGE_ID/merge?access_token=$ACCESS_TOKEN_PASSWORD"
        }
      }
    }
  }
}
