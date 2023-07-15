# /app /usr /lib
#FROM --platform=linux/amd64 node:19.2-alpine3.16
#FROM --platform=$BUILDPLATFORM node:19.2-alpine3.16
FROM node:19.2-alpine3.16


# cd app
WORKDIR /app

#Dest /app
COPY package.json ./

#instalar las dependecias 
RUN npm install 

#Dest /app
COPY . .

#Realizar los test 
RUN npm run test

#Eliminar dependencias y achivos no necesarios en produccion
RUN rm -rf test && rm -rf node_modules

#Unicamente las dependencias de produccion
RUN npm install --prod 

# Comando run de la imagen 
CMD [ "node", "app.js" ]




