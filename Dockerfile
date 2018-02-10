FROM node:9.2.1-alpine

EXPOSE 3000

WORKDIR /app

COPY package*.json ./
#RUN npm install

COPY . .

CMD [ "npm", "start" ]