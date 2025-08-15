# Gunakan image Node.js versi ringan
FROM node:18-alpine

# Set working directory di container
WORKDIR /app

# Copy file package.json & package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file aplikasi
COPY . .

# Aplikasi berjalan di port 3000
EXPOSE 3000

# Jalankan aplikasi
CMD ["npm", "start"]

