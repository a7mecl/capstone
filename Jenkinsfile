pipeline {
    agent any
    stages {
        stage('Lint index.html') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
    }          
}
