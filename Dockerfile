# Gunakan image Node.js resmi
FROM node:18

# Tentukan direktori kerja
WORKDIR /app

# Salin package.json dan instal dependensi
COPY package*.json ./
RUN npm install

# Salin semua kode aplikasi
COPY . .

RUN npm run build

# Buka port dan mulai aplikasi
EXPOSE 3000
CMD ["npm", "start"]