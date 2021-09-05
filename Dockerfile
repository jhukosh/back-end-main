FROM node:14-alpine

WORKDIR /var/www/back-end-main

COPY package*.json ./
RUN ls -al
RUN pwd
RUN npm install

COPY . .

RUN npm build

CMD ["npm", "start"]