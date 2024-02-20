# Use the official Node.js image as a base image
FROM node:16

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./
COPY prisma ./prisma/

# Install dependencies
RUN npm install

# ---- Build ----
FROM node:16 as build

# Copy the rest of the application code
COPY . .

# Expose port 3001 for the Node.js server
EXPOSE 3001

# Start the Node.js application
CMD ["node", "server.js"]
