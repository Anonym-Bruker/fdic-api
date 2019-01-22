
#!/bin/bash -xv
echo '=====>docker stop'
docker stop jenkins
docker rm jenkins
echo '=====>docker run'
docker run -d --restart always --name jenkins --network fdic-api -p 8080:8080 -p 50000:50000 -v ${PWD}/jenkins_home:/var/jenkins_home jenkins/jenkins:lts
