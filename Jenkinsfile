pipeline {
    agent any
    stages{
        stage('Build'){
            steps {
                sh '/var/jenkins_home/tools/hudson.tasks.Maven_MavenInstallation/3.6.0/bin/mvn clean package'
                sh 'docker build . tomcatwebapp:${env.BUILD_ID}'''
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
