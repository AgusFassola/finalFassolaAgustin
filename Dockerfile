#imagen base
 FROM ubuntu
#Establecer directorio de trabajo
 WORKDIR /app
#Copiar archivos de package.json y package-lock.json
 COPY package*.json ./
 RUN apt-get update 
 RUN apt install -y apache2
#Copiar codigo de aplicacion
 COPY . .
#Exponer el puerto en el que la aplicacion correra
 EXPOSE 3000
#iniciar la aplicacion
 CMD ["node", "index.js"]