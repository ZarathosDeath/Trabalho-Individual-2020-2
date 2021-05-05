FROM node:12.2.0-alpine

RUN mkdir /app

WORKDIR /app

COPY . .

RUN yarn install

RUN yarn global add @quasar/cli

RUN yarn add express serve-static connect-history-api-fallback

RUN yarn build

CMD [ "yarn", "start" ]