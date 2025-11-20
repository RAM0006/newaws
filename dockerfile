# Use official Node runtime
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy rest of your application
COPY . .

# Expose app port (change if your app uses a different port)
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
