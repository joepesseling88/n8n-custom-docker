FROM node:18

# Install specific version of n8n + community node
RUN npm install -g n8n@1.88.0 n8n-nodes-mcp

# Set up working directory and user
ENV N8N_USER_FOLDER=/home/node
RUN mkdir -p /home/node/.n8n
WORKDIR /home/node
RUN useradd --create-home --shell /bin/bash nodeuser && chown -R nodeuser /home/node
USER nodeuser

# Start n8n
CMD ["n8n"]

