FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first to leverage Docker's cache
COPY package*.json ./

# Install Node.js dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port your Express app listens on
EXPOSE 3000

# Command to run the application when the container starts
CMD ["npm", "start"]