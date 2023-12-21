 pipeline {
    agent any
	stages {
        	stage('Build Artifact') {
           	   steps {
                	sh "mvn clean package"
            		}
        	}
		stage('Build Docker Image') {
           	   steps {
                	sh "docker build -t nithishdocker19/java-app:0.0.1 ."
            		}
        	}
        stage('Push Docker Image') {
           	   steps {
			   withCredentials([usernamePassword(credentialsId: 'DockerHub', passwordVariable: 'hubPwd', usernameVariable: 'hubUser')]) {
  				sh "docker login -u ${hubUser} -p ${hubPwd}"
                    sh "docker push nithishdocker19/java-app:0.0.1"
}
}
}
}
 }
