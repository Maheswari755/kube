# Use Node base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all app files
COPY . .

# Expose port
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]

