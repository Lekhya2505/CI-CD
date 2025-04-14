# Use Node.js LTS version
FROM node:18

# Set app directory
WORKDIR /app

# Copy files
COPY package*.json ./
RUN npm install

COPY . .

# Expose port and start app
EXPOSE 3000
CMD ["node", "src/index.js"]
