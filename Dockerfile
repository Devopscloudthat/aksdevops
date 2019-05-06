FROM node:carbon
LABEL maintainer="devops@cloudthat.in"
WORKDIR /nodeapp
COPY package*.json ./
RUN npm install
COPY src /nodeapp
EXPOSE 80
CMD [ "node", "index.js" ]
