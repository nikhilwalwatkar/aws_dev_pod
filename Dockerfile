FROM node:12.2.0-alpine

# Set the working directory within the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of your application source code to the container
COPY . .

# Expose the port your application listens on
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]

# Add a new command to run npm test after npm install
CMD ["npm", "test"]
