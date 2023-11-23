# ambil base image node.js
FROM node:14.21.3-alpine3.17 
# set working directory
WORKDIR /app  
# salin seluruh berkas ke working directory
COPY . . 
# set lingkungan aplikasi dan inang database
ENV NODE_ENV=production DB_HOST=item-db 
# install dependensi yang diperlukan dilanjutkan dgn proses build
RUN npm install --production --unsafe-perm && npm run build 
# buka port 8080
EXPOSE 8080 
# jalankan server
CMD [ "npm", "start" ]