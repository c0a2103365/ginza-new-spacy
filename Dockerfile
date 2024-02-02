FROM nvidia/cuda:12.0.0-cudnn8-devel-ubuntu20.04

WORKDIR /
USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo && \
    sudo apt-get install -y vim && \
    sudo apt-get install -y nano && \
    sudo apt-get install -y python3 python3-pip && \
    python3 -m pip install -U setuptools pip
RUN pip install cupy
# RUN pip install cupy-cuda12x
RUN pip install -U pip setuptools wheel
RUN pip install -U 'spacy[cuda12x]'
RUN pip install "https://github.com/megagonlabs/ginza/releases/download/v5.1.3/ja_ginza_bert_large-5.1.3b1-py3-none-any.whl"