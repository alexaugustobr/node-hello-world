FROM node:20-slim

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm --loglevel=silly install

COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]
