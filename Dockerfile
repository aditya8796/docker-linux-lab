FROM ubuntu:22.04

# Avoid interactive prompts during package install
ENV DEBIAN_FRONTEND=noninteractive

# Update system and install basic tools
RUN apt-get update && apt-get install -y \
    iproute2 \
    net-tools \
    vim \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Set hostname inside container
RUN echo "docker-linux-lab" > /etc/hostname

# Default command: start a shell
CMD ["/bin/bash"]