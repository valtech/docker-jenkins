FROM jenkins:1.609.3
USER root
RUN apt-get update && \
    apt-get install -y python-pip nodejs npm && \
    pip install awscli && \
    update-alternatives --install /usr/bin/node node /usr/bin/nodejs 10 && \
    npm install -g grunt-cli karma bower phantomjs
COPY active.txt .
RUN /usr/local/bin/plugins.sh active.txt
