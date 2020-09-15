@Library('piper-library-os') _

node() {
    stage('setup') {
        setupCommonPipelineEnvironment script: this
        script 'echo "hello world" > test.txt'
    }
    stage('malewarescan') {

        malewareExecuteScan script: this, file: 'test.txt', malwareScanCredentialsId: malewareScan
    }
}
