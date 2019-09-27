@Library('piper-lib-os@eb57c8df7b9a4b7a9f44ae57f5054303a0c9f74e') _

node() {
    stage("a") {
      deleteDir()
      checkout scm
      setupCommonPipelineEnvironment script: this    

      def target = commonPipelineEnvironment.configuration.steps.mtaBuild.buildTarget

      echo "TARGET: ${target}"

    }
}
