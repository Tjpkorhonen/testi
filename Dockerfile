FROM node:8

WORKDIR /usr/src/vk7

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "node", "populatedb", "mongodb://webuser:webuser1@ds145923.mlab.com:45923/local_library"]
