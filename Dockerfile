# Use the official Node.js LTS image as base
FROM node:lts-alpine

# Set working directory for the application
WORKDIR /app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the entire application code
COPY . .

# Expose port 3000 for container communication
EXPOSE 3000

# Start the application using the default start script (usually defined in package.json)
CMD [ "npm", "run", "start" ]