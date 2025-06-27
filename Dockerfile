FROM n8nio/n8n:latest

# Switch to root user to install packages
USER root

# Install ffmpeg
RUN apt-get update && apt-get install -y ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Switch back to default user for n8n
USER node
