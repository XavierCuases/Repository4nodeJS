# Usa la imagen oficial de Node.js como base
FROM node:14

# Crea y establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos de package.json y package-lock.json al contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código de la aplicación al contenedor
COPY . .

# Expone el puerto 3000
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD ["npm", "start"]
