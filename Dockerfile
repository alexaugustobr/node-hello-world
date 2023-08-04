FROM node:12-slim

# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./
RUN npm --loglevel=silly install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]
