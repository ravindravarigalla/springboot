pipeline {
    agent any
    tools { 
        maven 'jenkins-maven'  
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    #echo "PATH = ${PATH}"
                    #echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }

        stage ('Build') {
            steps {
                sh  'mvn clean install -Dskiptests'
            }
        }
        stage ('build and push image to gcr') {
            steps {
                sh  "gcloud auth list"
                sh  "gcloud builds submit -t gcr.io/my-project-suri-279708/spring"
            }
        }
    }
}
