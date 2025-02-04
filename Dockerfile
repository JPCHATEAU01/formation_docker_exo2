FROM node:alpine

WORKDIR /app/node

COPY package*.json .

RUN npm i 

COPY index.js .

EXPOSE 4444
RUN addgroup -S test && adduser -S nodeapp && adduser -S unicorn

USER nodeapp

CMD ["npm", "start"]