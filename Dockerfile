# Use the official Node.js image
FROM node:18-alpine

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json into the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port your application will run on
EXPOSE 8080

# Run the Node.js server
CMD ["npm", "start"]
