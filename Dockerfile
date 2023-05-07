FROM node:20-slim

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
##13
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]
