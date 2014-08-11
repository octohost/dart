# Forked from: https://github.com/nkratzke/containerdart
# Install a dart container for demonstration purposes.
# Your dart server app will be accessible via HTTP on container port 8080. The port can be changed.
# You should adapt this Dockerfile to your needs.
# If you are new to Dockerfiles please read
# http://docs.docker.io/en/latest/reference/builder/
# to learn more about Dockerfiles.
#
# This file is hosted on github. Therefore you can start it in docker like this:
# > docker build -t containerdart github.com/nkratzke/containerdart
# > docker run -p 8888:8080 -d containerdart

FROM ubuntu:trusty

# Install Dart SDK. Do not touch this until you know what you are doing.
# We do not install darteditor nor dartium because this is a server container.
# See: http://askubuntu.com/questions/377233/how-to-install-google-dart-in-ubuntu
RUN apt-get update
RUN apt-get install -y software-properties-common python-software-properties
RUN apt-add-repository ppa:hachre/dart
RUN apt-get -y update
RUN apt-get install -y dartsdk
