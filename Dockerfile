FROM jenkins:1.609.1
USER root
RUN apt-get update &&  apt-get install -y python-pip && pip install awscli
USER jenkins
COPY active.txt .
RUN /usr/local/bin/plugins.sh active.txt
