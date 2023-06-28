# pull ubuntu 18.04 as base image
FROM nvidia/cuda:11.3.0-devel-ubuntu20.04

RUN echo "start building..."

# update packages
RUN set -x && \
    apt update && \
    apt upgrade -y

RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata

# install command
RUN set -x && \
    apt install -y wget && \
    apt install -y sudo && \
    apt install -y cmake && \
    apt install -y build-essential libx11-dev libopenblas-dev liblapack-dev && \
    apt install -y libgl1-mesa-dev libglib2.0-0

# anaconda
RUN set -x && \
    wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh && \
    bash Anaconda3-2022.10-Linux-x86_64.sh -b && \
    rm Anaconda3-2022.10-Linux-x86_64.sh

# path setteing
ENV PATH $PATH:/root/anaconda3/bin

# install dlib
RUN pip install -U pip &&\
  pip install --no-cache-dir dlib==19.21.0 &&\
  pip install scipy==1.7.0

# update conda
RUN conda update --all