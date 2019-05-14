pipeline {
  agent any
  stages {
    stage('编译执行单元测试') {
      steps {
        sh "sudo ${env.WORKSPACE}/builder.sh build"

        publishHTML(target: [
          allowMissing: false,
          alwaysLinkToLastBuild: false,
          keepAll: true,
          reportDir: "${env.WORKSPACE}/target/site/jacoco",
          reportFiles: 'index.html',
          reportName: "测试覆盖"
        ])
      }
    }
    
    stage('发布') {
      steps {
        sh "sudo ${env.WORKSPACE}/builder.sh deploy"
      }
    }
  }
}
