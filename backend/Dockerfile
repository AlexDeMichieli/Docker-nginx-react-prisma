# Use the official Node.js image as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3001 for the Node.js server
EXPOSE 3001

# Start the Node.js application
CMD ["node", "server.js"]
