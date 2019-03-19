# base image
FROM node:lts-alpine

# set working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# install and cache app dependencies
COPY package*.json ./
RUN npm install -g @vue/cli
RUN npm install
COPY . .
RUN npm run build

EXPOSE 8080
