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
       stage('Cucumber Reports') {
       steps {
    // process cucumber reports
    // send report to slack
    //  slackSend channel: 'desenvolvimento-carreira-qa', color: '#33AFFF', message: "*STARTED*: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'\n *More info at:* ${env.BUILD_URL}", teamDomain: 'center-tech', tokenCredentialId: 'slack'
       cucumber buildStatus: "UNSTABLE", fileIncludePattern: "**/relatorio.json",jsonReportDirectory: 'report'
       publishHTML([allowMissing: false, alwaysLinkToLastBuild: false, keepAll: true, reportDir: 'report', reportFiles: 'report.html', reportName: 'Test Report', reportTitles: ''])
      }
     }
      stage('Push image')
      steps{
          docker.withRegistry('https://registry.hub.docker.com','docker-hub-credentials') {
              app.push("${env.BUILD_NUMBER}")
              app.push({"latest"})
          }
      }
    }
   }