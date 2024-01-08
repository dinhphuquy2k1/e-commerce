# Sử dụng image node phiên bản LTS
FROM node:lts-alpine
# Thiết lập thư mục làm việc
WORKDIR /app/frontend
# Copy package.json và package-lock.json để cài đặt dependencies
COPY package*.json /app/frontend
# Cài đặt dependencies
RUN npm install
RUN npm install --location=global @vue/cli
COPY . /app/frontend
# Build ứng dụng Vue.js
RUN npm run build
EXPOSE 8080
CMD [ "npm", "--prefix", "frontend", "run", "serve" ]
