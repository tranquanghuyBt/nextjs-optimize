FROM node:current-alpine
WORKDIR /out

COPY package*.json ./
RUN yarn install

COPY . .
RUN yarn build

CMD ["yarn", "start"]
