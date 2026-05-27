# Use Node.js 14 as base image
FROM node:14-alpine

# Set working directory
WORKDIR /app

# Copy package files first for caching
COPY package*.json ./

# Install production dependencies
RUN npm install --production

# Copy application source
COPY . .

# Expose port 3001 for shipping service
EXPOSE 3001

# Start the application
CMD ["npm", "start"]
