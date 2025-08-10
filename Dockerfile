# Use official Node.js LTS image as base
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json for efficient dependency install
COPY package.json package-lock.json ./

# Install dependencies (only production if preferred, otherwise remove --production)
RUN npm install --production

# Copy rest of the application source code
COPY . .

# Expose the port your app listens on
EXPOSE 3000

# Default command to run your app
CMD ["npm", "start"]

