FROM jenkins:1.609.1
COPY active.txt .
RUN /usr/local/bin/plugins.sh active.txt
