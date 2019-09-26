@Library('piper-lib-os') _

node() {
    stage("a") {
      deleteDir()
      checkout scm
      setupCommonPipelineEnvironment script: this    
    }
}
