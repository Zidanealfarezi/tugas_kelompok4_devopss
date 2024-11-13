# Menggunakan base image
FROM node:18

# Menetapkan direktori kerja di dalam container
WORKDIR /app

# Menyalin file package.json dan package-lock.json ke dalam container
COPY package*.json babel.config.js ./

# Install dependencies
RUN npm install

# Salin seluruh file ke dalam container
COPY . .

# Menjalankan aplikasi untuk build
RUN npm run build

# Menjalankan pengujian sebagai langkah terpisah untuk memastikan build berhasil
RUN npm test -- --watchAll=false

# Menentukan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]
