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
         sleep 40
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
	     stage ('heroku - Deploy') {
	     steps {
 	     checkout([$class: 'GitSCM', branches: [[name: '*/develop']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[credentialsId: 'github', url: 'https://github.com/willssan05/aplicacao-nodejs.git']]]) 
	    }
       }
    }
}