// hello
@Library('my-shared-library') _
pipeline {
    agent any
    parameters {
        choice(name: 'action', choices: 'create\ndelete', description: 'choose create/destroy')
    }
    stages {
        stage('gitCheckout') {
        when { expression { params.action == 'create'}}
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
        when { expression { params.action == 'create'}}
            steps {
                script{
                    mvnTest()
                }
            }
        }
        stage('Integration test maven'){
        when { expression { params.action == 'create'}}
            steps{
                script{
                    mvnintegrationTest()
                }
            }
        }
        stage('Static Code Analysis'){
        when { expression { params.action == 'create'}}
            steps{
                script{
                    def SonarQubecredentialsId = 'sonar-token'
                    staticCodeAnalysis(SonarQubecredentialsId)
                }
            }
        }

    }
    
} 

