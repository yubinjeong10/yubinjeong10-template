# Pull the Node.js Docker image:
FROM node:22-alpine

# Install Bash Shell
RUN apk update && apk add --no-cache git vim openssh openssh-keygen python3 shadow bash && chsh -s /bin/bash

# Install terminalizer
RUN npm install -g terminalizer

# Set working directory
WORKDIR /root
