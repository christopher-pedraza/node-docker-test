# Usa una imagen base oficial de Node.js
FROM node:20
# Establece el directorio de trabajo en /usr/src/app
WORKDIR /usr/src/app
# Copia los archivos de la aplicación
COPY . .
# Instala las dependencias del proyecto
RUN npm install
# Indica que puertos queremos exponer fuera del contendor
EXPOSE 3001
# Define el comando para ejecutar la aplicación
# Podriamos haber puesto "RUN npm start" dado que ya agregamos el script
CMD node app.js   