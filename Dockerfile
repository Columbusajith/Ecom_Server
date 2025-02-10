FROM node:22.12.0-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Expose the port on which your app runs
EXPOSE 8001

# Define the command to run your app using CMD
CMD ["npm", "start"]