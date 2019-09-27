@Library('piper-lib-os@master') _

node() {
    stage("a") {
      deleteDir()
      checkout scm
      setupCommonPipelineEnvironment script: this    

      def target = commonPipelineEnvironment.configuration.steps.mtaBuild.buildTarget

      echo "TARGET: ${target}"

    }
}
