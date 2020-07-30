pipeline {
  environment {
    PROJECT = "gke-nonprod-1"
    APP_NAME = "halodoc-website"
    FE_SVC_NAME = "${APP_NAME}"
    CLUSTER = "gke-apps"
    CLUSTER_ZONE = "asia-southeast2-c"
    JENKINS_CRED = "${PROJECT}"
    gcloud = credentials('service_account')
  }  
    agent any
    tools { 
        maven 'jenkins-maven'  
    }
    stages {
        stage ('Initialize') {
            steps {
                sh '''
                    pwd
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
                sh " gcloud auth activate-service-account --key-file ${gcloud}" 
                sh  "gcloud builds submit -t gcr.io/my-project-suri-279708/spring ."
            }
        }
       stage ('build and push image to gcr') {
            steps {
                sh  '''
                    helm ls 
                    helm repo add stable https://kubernetes-charts.storage.googleapis.com/ 
                    helm repo update
                    helm install sample gg
                    '''
            }
        }
    }
}
