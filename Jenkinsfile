@Library('piper-lib-os@marcusholl/troubleshoot2CPE') _

node() {
     stage('xx') {
         try {

           piperPipelineStageInit script: this, buildtool: 'maven'           
         } catch(Throwable thr) {
             
             StringWriter sw = new StringWriter()
             PrintWriter pw = new PrintWriter(sw)
 
             thr.printStackTrace(pw)
             echo "CAUGHT: ${sw}"
             throw thr
         }
     }
 }
