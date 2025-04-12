FROM n8nio/n8n:1.88.0

# Install community node globally
RUN npm install -g n8n-nodes-mcp

# Set correct permissions and data folder
ENV N8N_USER_FOLDER=/home/node/.n8n
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

CMD ["n8n"]
