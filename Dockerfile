# menggunakan base image node.js versi 14
FROM node:14-alpine

# menentukan working directory di /app
WORKDIR /app

# menyalin seluruh source code ke working directory di container
COPY . .

# menetapkan enviraonment variable agar code berjalan di production mode dan meggunakan item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# ekspos port 8080
EXPOSE 8080

# menjalankan "npm start" saat deployment kontainer
CMD ["npm", "start"]