FROM node:9.2.1-alpine

EXPOSE 3000

WORKDIR /app

# copy these files from our local workspace into the container (they will end up in /app)
COPY package*.json ./

# install npm packages. This is exactly the same as running it on our local workstation but is running inside the container so will install packages there.
RUN npm install

# Copy everything else (i.e. Code) into the container from our local workspace
COPY . .

CMD [ "npm", "start" ]