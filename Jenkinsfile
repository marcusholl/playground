@Library('piper-lib-os') _

node() {
    stage('setup') {
        setupCommonPipelineEnvironment script: this
        sh 'echo "hello world" > test.txt'
    }
    stage('malewarescan') {

        malwareExecuteScan script: this, file: 'test.txt', malwareScanCredentialsId: 'malewareScan'
    }
}
