# ambil node image
FROM node:14-alpine
# lokasi direktori kerja
WORKDIR /app
# salin file package.json
COPY package.json .
# tambahkan file index.js
ADD index.js .
# setting lingkungan port dan url
ENV PORT=3001 AMQP_URL=amqp://localhost:5672
# install npm
RUN npm install
# jalankan perintah
CMD ["npm", "run", "start"]
# ekspose port nomor
EXPOSE 3001