FROM spack/rockylinux8:develop

RUN dnf -y update && \
    dnf -y groupinstall "InfiniBand Support" && \
    dnf -y install opa-basic-tools libpsm2 libfabric libfabric-devel && \
    dnf clean all && \
    rm -rf /var/cache/dnf

RUN echo "Start building"

RUN mkdir /opt/spack-environment