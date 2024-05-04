# Use the official Node.js base image
FROM node:14

# Create and set the working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "start"]


# # Use an official Node.js runtime as the base image
# FROM node:16-alpine

# # Set the working directory inside the container
# WORKDIR /app

# # Copy package.json and package-lock.json (if available) to the working directory
# COPY package*.json ./

# # Install application dependencies
# RUN npm install

# # Copy the rest of the application code into the container
# COPY . .

# # Expose the port the app runs on (you can change the port if your app uses a different one)
# EXPOSE 3000

# # Define the command to run the application
# CMD ["npm", "start"]