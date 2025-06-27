FROM n8nio/n8n:latest

# Switch to root user to install packages
USER root

# Install ffmpeg with Alpine package manager
RUN apk add --no-cache ffmpeg

# Switch back to default user for n8n
USER node
