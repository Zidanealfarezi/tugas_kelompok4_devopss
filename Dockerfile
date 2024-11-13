# Menggunakan base image
FROM node:18

# Menetapkan direktori kerja di dalam container
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke dalam container
COPY package*.json ./

# Menginstal dependensi
RUN npm install

# Menyalin semua file ke dalam container
COPY . .

# Menentukan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]
