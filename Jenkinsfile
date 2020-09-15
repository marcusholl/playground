@Library('piper-lib-os') _

node() {
    stage('setup') {
        setupCommonPipelineEnvironment script: this
        sh 'echo "hello world" > test.txt'
    }
    stage('malewarescan') {

        malwareExecuteScan script: this, dockerImage: 'node', file: 'test.txt', host: 'https://malware-scanner.cf.sap.hana.ondemand.com' , malwareScanCredentialsId: 'malwarescan'
    }
}
