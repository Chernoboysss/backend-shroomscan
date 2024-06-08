# Gunakan node.js versi terbaru sebagai base image
FROM node:14

# Set working directory di dalam container
WORKDIR /usr/src/app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Menyalin seluruh kode aplikasi ke dalam container
COPY . .

# Menjalankan aplikasi saat container dijalankan
CMD ["npm", "start"]
