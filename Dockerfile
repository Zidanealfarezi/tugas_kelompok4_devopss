# Menggunakan base image Node.js versi 18
FROM node:18

# Menetapkan direktori kerja di dalam container
WORKDIR /app

# Menyalin file package.json, package-lock.json, dan babel.config.js ke dalam container
COPY package*.json babel.config.js ./

# Install dependencies
RUN npm install

# Salin seluruh file ke dalam container
COPY . .

# Menentukan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]
