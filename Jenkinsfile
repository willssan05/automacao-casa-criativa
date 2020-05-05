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
    stage('Test Git') {
    steps {
      withCredentials([sshUserPrivateKey(credentialsId: 'github', keyFileVariable: 'SSH_KEY')]) {
        sh 'git config --global user.name "willssano5"'
        sh 'git config --global user.email "willssan05@gmail.com"'
        sh 'git remote add origin git@github.com:willssan05/automacao-casa-criativa.git'
        sh 'git add '
        sh 'git commit --allow-empty -m "test withCredentials"'
        sh 'git push origin master'
      }
    }
   }
  }
}

