# Menggunakan base image
FROM node:18

# Menetapkan direktori kerja di dalam container
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Install dependencies
RUN npm install

# Salin seluruh file ke dalam container
COPY . .

# Jalankan pengujian saat build
RUN npm run test

# Menentukan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]
