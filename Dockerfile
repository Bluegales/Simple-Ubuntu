# syntax=docker/dockerfile:1
FROM ubuntu:20.04
ENV TZ=Europe/Berlin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get install build-essential -y
RUN apt-get install python3 python3-pip -y
RUN apt-get install curl git -y
RUN apt-get install valgrind -y
RUN apt-get install zsh -y
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
RUN pip3 install setuptools
RUN pip3 install norminette
WORKDIR /host/
