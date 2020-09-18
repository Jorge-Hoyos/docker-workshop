FROM ubuntu:18.04
RUN apt-get upgrade && apt-get update
# Creating argument for jenkins user and group
ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000
# Jenkins is run with user `jenkins`, uid = 1000

# Creating JENKINS_HOME environment variable
ENV JENKINS_HOME=/var/jenkins_home

# Creating dir
RUN mkdir -p $JENKINS_HOME \
  && chown ${uid}:${gid} $JENKINS_HOME \
  && groupadd -g ${gid} ${group} \
  && useradd -d "$JENKINS_HOME" -u ${uid} -g ${gid} -m -s /bin/bash ${user}

RUN touch test.txt
COPY --chown=${uid}:${gid} commands.sh /
COPY commands.sh /commands2.sh

USER jenkins
COPY commands.sh /commands3.sh
