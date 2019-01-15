FROM jenkins/jnlp-slave
LABEL MAINTAINER="ZhuJun Lu <24comic@gmail.com>"

USER root
RUN curl -sL https://deb.nodesource.com/setup_8.x | /bin/bash - \
  && apt-get install -y nodejs \
  && apt-get clean \
  && npm install -g n

USER jenkins
