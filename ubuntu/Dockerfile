FROM ubuntu:18.04
RUN apt-get upgrade && apt-get update
# Adding jenkins user and group
ARG user=jenkins
ARG group=jenkins
ARG uid=1000
ARG gid=1000
# Jenkins is run with user `jenkins`, uid = 1000

RUN touch test.txt
COPY --chown=${uid}:${gid} commands.sh /
COPY commands.sh /commands2.sh
