FROM node:18

# Install n8n and the MCP node
RUN npm install -g n8n n8n-nodes-mcp

# Create the .n8n data directory
ENV N8N_USER_FOLDER=/home/node/.n8n
RUN mkdir -p /home/node/.n8n

# Set work directory
WORKDIR /home/node

# Expose port (optional for local testing)
EXPOSE 5678

# Use unprivileged user for security
RUN useradd --create-home --shell /bin/bash nodeuser && chown -R nodeuser /home/node
USER nodeuser

# Start n8n
CMD ["n8n"]

