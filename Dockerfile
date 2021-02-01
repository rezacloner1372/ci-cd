FROM node:10-alpine

WORKDIR /usr/src/app
COPY ./src ./src
COPY package*.json ./
# Don't install dev dependencies
RUN npm ci --only=production
CMD node ./src/index.js
