@Library('piper-lib-os@experimental') _

node() {
    stage("a") {
      deleteDir()
      checkout scm
        
        
      def branch = null
        
      String landscape = 'landscape.yml'
      if(branch in ['develop', 'quality', 'master']) {
          landscape = "landscape-${branch}.yml"
      }
        
      echo "LANDSCAPE: ${landscape}"
        
      setupCommonPipelineEnvironment script: this    

      def target = commonPipelineEnvironment.configuration.steps.mtaBuild.buildTarget

      echo "TARGET: ${target}"

    }
}
