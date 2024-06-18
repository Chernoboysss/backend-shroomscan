# Gunakan node.js versi 16 sebagai base image
FROM node:16.13

# Set working directory di dalam container
WORKDIR /app

# Menyalin package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Menyalin seluruh kode aplikasi ke dalam container
COPY . .

# Menyalin direktori prisma ke dalam container
COPY prisma ./prisma

# Set environment variable untuk DATABASE_URL
# Gantilah <YOUR_DATABASE_URL> dengan URL koneksi database Anda
ENV DATABASE_URL="mysql://root:123@34.101.195.160/db_shroomscan"

# Menjalankan prisma db pull untuk menarik skema dari database
RUN npx prisma db pull

# Menjalankan prisma generate untuk mengenerate Prisma Client
RUN npx prisma generate

# Port yang akan digunakan oleh aplikasi
EXPOSE 3000

# Command untuk menjalankan aplikasi saat container dijalankan
CMD ["npm", "run", "start"]
