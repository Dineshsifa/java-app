pipeline {
    agent any
    stages {
        stage ('checkout') {
            steps {
		checkout scm
            }
        }
        stage ('Build') {
            steps {
                sh '${m2_home}/usr/local/src -f java-sample-app/pom.xml clean install' 
            }
        }
    }
}
