FROM node:18-slim

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install
##1321
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]
