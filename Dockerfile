# Use an official Node.js runtime as the base image
FROM node:18

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the container's working directory
COPY mint.json ./

# Install any needed dependencies using npm
RUN npm i -g mintlify

# Copy the rest of the application code into the container
COPY . .

# Make the container's port 3000 available to the outside
EXPOSE 3000

# Define the command to run the application using mintlify
CMD ["mintlify", "dev"]
