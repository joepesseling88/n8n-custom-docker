FROM n8nio/n8n:1.88.0

# Switch to root to install the MCP node
USER root
RUN npm install -g n8n-nodes-mcp

# Switch back to the default user
USER node

# Set correct permissions and data folder
ENV N8N_USER_FOLDER=/home/node/.n8n
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

CMD ["npx", "n8n"]
