# Pull the Node.js Docker image:
FROM node:22-alpine

# Install Bash Shell
RUN apk update && apk add --no-cache git vim openssh openssh-keygen python3 shadow bash && chsh -s /bin/bash

# Install terminalizer
RUN npm install -g terminalizer

# Generate a ssh key (-q: quite, -t: encryption method, -N: passphrase, -f filename)
RUN ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa

# Set argument for username
ARG USER

# Set argument for email
ARG EMAIL

# Setup git config
RUN git config --global core.pager '' && git config --global user.name ${USER} && git config --global user.email ${EMAIL}

# Set working directory
WORKDIR /workspace

