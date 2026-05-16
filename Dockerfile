# Usamos una imagen ligera de Node.js
FROM node:18-alpine

WORKDIR /app

# Copiamos los archivos de dependencias
COPY package*.json ./

# Instalamos las dependencias
RUN npm install

# Copiamos el resto del código del frontend
COPY . .

# Exponemos el puerto estándar de Vite
EXPOSE 5173

# Arrancamos Vite permitiendo conexiones externas (--host)
CMD ["npm", "run", "dev", "--", "--host"]