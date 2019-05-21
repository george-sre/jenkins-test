FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y docker
RUN apt-get install -y gcc
RUN apt-get install -y build-essential

RUN echo hello
