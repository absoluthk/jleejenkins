pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                sh '/var/jenkins_home/tools/hudson.tasks.Maven_MavenInstallation/3.6.0/bin/mvn clean package'
            }
            post {
                success {
                    echo 'Now Archiving...'
                    archiveArtifacts artifacts: '**/target/*.war'
                }
            }
        }
    }
}
