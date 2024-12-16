FROM flatironinstitute/triqs:latest

ENV DEBIAN_FRONTEND=noninteractive

USER root

# Install h5py
RUN apt update -y
RUN apt install -y python3-h5py

RUN useradd -ms /bin/bash dmft
USER dmft
WORKDIR /home/dmft

# Add dmft
RUN git clone https://github.com/bfield1/dmft /home/dmft/dmft

ENV PYTHONPATH="/home/dmft/dmft/python_modules/"
