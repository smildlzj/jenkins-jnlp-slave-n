FROM jenkins/jnlp-slave
LABEL MAINTAINER="ZhuJun Lu <24comic@gmail.com>"

ENV NVM_VERSION 0.33.11
ENV NODE_VERSION 8.9.4

USER root
RUN curl -sL https://deb.nodesource.com/setup_8.x | /bin/bash - \
  && apt-get clean \
  && npm install -g n

USER jenkins
