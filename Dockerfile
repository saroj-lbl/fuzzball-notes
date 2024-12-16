FROM flatironinstitute/triqs:latest

ENV DEBIAN_FRONTEND=noninteractive

USER root

# Install h5py
RUN apt update -y
RUN apt install -y python3-h5py

USER triqs

# Add dmft
RUN git clone https://github.com/bfield1/dmft /home/triqs/dmft

USER root

RUN cp -r /home/triqs/dmft/dmft/python_modules/dmft /usr/lib/python3/dist-packages/
