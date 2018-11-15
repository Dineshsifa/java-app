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
			 ansibleTower credential: 'windows10', extraVars: '', importTowerLogs: true, importWorkflowChildLogs: false, inventory: 'windows inventory', jobTags: '', jobTemplate: 'windows template', jobType: 'run', limit: '', removeColor: false, skipJobTags: '', templateType: 'job', towerServer: 'tower', verbose: true

		    }
	    }
		    }
}
