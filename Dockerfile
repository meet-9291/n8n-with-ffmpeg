FROM node:18-bullseye-slim

# Install ffmpeg
USER root
RUN apt-get update && apt-get install -y ffmpeg \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install n8n (manual install)
RUN npm install -g n8n

# Set working directory
WORKDIR /home/node

USER node

CMD ["n8n"]
