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
                sh '${m2_home}/usr/local/src/apache-maven/bin/mvn -f java-sample-app/pom.xml clean install' 
            }
        }
	    stage ('deploy') {
		    steps {
			 sh 'ssh-keyscan -H 192.168.1.5 >> ~/.ssh/known_hosts /var/lib/jenkins/workspace/pipeline project/java-sample-app/target/java-sample-app-1.0.0.war root@192.168.1.5:/usr/share/tomcat/webapp'
		    }
	    }
	    
		    }
}
