# Gunakan Node.js versi LTS
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json & package-lock.json dulu
COPY package*.json ./

# Install dependencies
RUN npm install --only=production

# Copy semua source code
COPY . .

# Expose port aplikasi
EXPOSE 8080

# Command untuk menjalankan app
CMD ["npm", "start"]

