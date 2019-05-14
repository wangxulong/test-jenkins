pipeline {
  agent any
  stages {
    stage('编译执行单元测试') {
      steps {
         sh "当前的目录：${env.WORKSPACE}"
        sh "sudo ${env.WORKSPACE}/builder.sh build"
      }
    }
    
    stage('发布') {
      steps {
        sh "sudo ${env.WORKSPACE}/builder.sh deploy"
      }
    }
  }
}
