# Use the official Node.js image as the base
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install the dependencies specified in package.json
RUN npm install

# Copy the entire project into the container
COPY . .

# Expose port 8080 (or whichever port your app listens on)
EXPOSE 8080

# Define the command to start your app
CMD ["npm", "start"]
