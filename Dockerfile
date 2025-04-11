# Gunakan Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Salin package files dan install dependencies
COPY package*.json ./
RUN npm install

# Salin semua file project
COPY . .

# Build Next.js app
RUN npm run build

# Jalankan server Next.js di production mode
CMD ["npm", "start"]
