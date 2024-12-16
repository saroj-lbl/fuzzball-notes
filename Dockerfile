FROM flatironinstitute/triqs:latest

ENV DEBIAN_FRONTEND=noninteractive

USER root

# Install h5py
RUN apt update -y
RUN apt install -y python3-h5py

USER triqs
# Add dmft
RUN git clone https://github.com/bfield1/dmft /home/triqs/dmft

ENV PYTHONPATH="/home/triqs/dmft/python_modules/"
