FROM node:9.7-alpine
LABEL maintainer="Nick Janetakis <nick.janetakis@gmail.com>"

RUN npm install -g yarn

WORKDIR /app/assets

COPY assets/package.json assets/yarn* ./
RUN yarn install --modules-folder /node_modules

COPY . .

CMD ["yarn", "run", "build"]
