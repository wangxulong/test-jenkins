pipeline {
  agent any
  stages {
    stage('编译执行单元测试') {
      steps {
         sh "当前的目录：${env.WORKSPACE}"
        sh "${env.WORKSPACE}/builder.sh build"
      }
    }
    
    stage('发布') {
      steps {
        sh "${env.WORKSPACE}/builder.sh deploy"
      }
    }
  }
}
