# Filename: Dockerfile
FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install software-properties-common apt-transport-https -y
RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xB4112585D386EB94
RUN add-apt-repository https://dl.hhvm.com/ubuntu
RUN apt-get update
RUN apt-get install hhvm -y
EXPOSE 80
EXPOSE 8999
WORKDIR /root/lean-hack


