pipeline{
    agent any
    stages{
        stage('deploy'){
            steps{
                sh 'cp -r * /var/www/html'
            }
        }
	stage('delete'){
            steps{
                sh 'docker rm $(docker ps -aq)'
		sh 'docker rmi $(docker images)'
            }
        }
	stage('create image'){
            steps{
                sh 'docker build -t kool:v1'
            }
        }
	stage('run docker'){
            steps{
                sh 'docker run -d --name dock_container -p 80:80 kool:v1'
            }
        }
    }
}
