# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy all files from the current directory to the working directory in the container
COPY . .

# Expose the port your Node.js app listens on
EXPOSE 3000

# Specify the command to run your app
CMD ["node", "app.js"]

