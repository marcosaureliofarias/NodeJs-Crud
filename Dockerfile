FROM node

WORKDIR /home/node/app

COPY package.json .

COPY package-lock.json .

RUN npm install

COPY . .

COPY --chown=node:node . .

EXPOSE 3000:3000

USER node 

CMD ["node", "index.js"]