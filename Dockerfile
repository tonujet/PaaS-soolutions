FROM node:20-alpine
USER node
RUN mkdir /home/node/server
WORKDIR /home/node/server
COPY --chown=node:node package.json .
RUN npm i
COPY --chown=node:node . .
CMD ["npm", "start"]

