FROM jenkins:1.609.3
USER root
RUN apt-get update &&  apt-get install -y python-pip nodejs npm && pip install awscli
COPY active.txt .
RUN /usr/local/bin/plugins.sh active.txt
