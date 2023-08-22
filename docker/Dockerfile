FROM nvidia/cuda:12.0.1-cudnn8-devel-ubuntu22.04

RUN apt-get update &&\
    apt-get -y dist-upgrade &&\
    apt-get install -y\
            sudo nano wget git zip unzip curl htop python3 python3-pip\
            libgl1-mesa-glx libglib2.0-0 libpython3-dev gnupg g++ libusb-1.0-0

ENV username="detector"
ARG uid=1000

RUN useradd --create-home --shell /bin/bash -u ${uid} ${username} &&\
    usermod -aG sudo ${username} &&\
    chown -R ${username}:${username} /home/${username} &&\
    echo "export PATH=$PATH:/home/${username}/.local/bin" >> /home/${username}/.bashrc

USER ${username}
WORKDIR /home/${username}

RUN git clone https://github.com/az0422/CustomizedYOLO &&\
    pip install ./CustomizedYOLO &&\
    pip install jupyter notebook==6.4.12

WORKDIR /home/detector/workspace
RUN wget https://github.com/az0422/defectDetection/weights/weights.pt &&\
    wget https://github.com/az0422/defectDetection/example/example.ipynb &&\
    mkdir detect

WORKDIR /home/detector

