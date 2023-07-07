@Library('piper-library-os') _
@Library('piper-landscape') __

node() {

  stage('prepare') {

      
      def scminfo = checkout scm

      echo "[MH] scminfo: ${scmInfo}"

      setupCommonPipelineEnvironment script:this, customDefaults: 'landscape.yml'

      checkChangeInDevelopment script: this
  }

  stage('build') {
      mtaBuild script: this
  }

  stage('neoDeploy') {
      neoDeploy script: this
  }

  stage('solmanUpload') {
      transportRequestUploadFile script:this
  }
}
