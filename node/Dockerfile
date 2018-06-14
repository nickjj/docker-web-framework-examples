FROM node:10.4-alpine
LABEL maintainer="Nick Janetakis <nick.janetakis@gmail.com>"

RUN npm install -g yarn

ARG NODE_ENV=production
ENV NODE_ENV="${NODE_ENV}"

WORKDIR /app

COPY package.json yarn* ./
RUN yarn install --modules-folder /node_modules

COPY . .

EXPOSE 8000
HEALTHCHECK CMD curl -f http://localhost:8000/healthy || exit 1

CMD ["yarn", "run", "production"]
