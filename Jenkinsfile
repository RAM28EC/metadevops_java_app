// hello
@Library('my-shared-library') _
pipeline {
    agent any
    stages {
        stage('gitCheckout') {
            steps{
                script{
                    gitCheckout(
                        branch: 'main',
                        url: 'https://github.com/RAM28EC/metadevops_java_app.git'
                    )
                }
            }   
            
        }
        stage('Unit Test Maven') {
            steps {
                script{
                    mvnTest()
                }
            }
        }
        stage('Integration test maven'){
            steps{
                script{
                    mvnintegrationTest()
                }
            }
        }

    }
    
} 

