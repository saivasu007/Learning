# This Dockerfile should be run only after build.sh is run - this is configured in the Jenkinsfile Pipeline

# Pull base image from public repository for Jenkins (https://hub.docker.com/r/jenkins/jenkins/tags/)

FROM jenkins/jenkins:2.121.1

MAINTAINER test

# Switch to 'jenkins' user
USER jenkins

# Install required plugins for this jenkins master
# plugins.txt will be generated by the build.sh script in the current folder
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
