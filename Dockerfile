# Use Node.js 14 as base image
FROM node:14-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first for better layer caching
COPY package*.json ./

# Install production dependencies only
RUN npm install --production

# Copy the rest of the application source
COPY . .

# Expose port 3000 for order service
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
