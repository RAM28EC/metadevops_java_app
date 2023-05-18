// hello
@Library('my-shared-library') _
pipeline {
    agent any
    stages {
        stage('gitCheckout') {
            steps {
            gitCheckout{
                branch: 'main',
                url: 'https://github.com/RAM28EC/metadevops_java_app.git'
            }
            }    
            
        }
    }
    
} 

