# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy all application files to the container
COPY . .

# Expose the port on which the application will run
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
