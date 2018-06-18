FROM node:10.4-alpine
LABEL maintainer="Nick Janetakis <nick.janetakis@gmail.com>"

RUN npm install -g yarn && mkdir /node

ARG NODE_ENV=production
ENV NODE_ENV="${NODE_ENV}"

WORKDIR /app

COPY package.json *yarn* ./
RUN yarn install && cp yarn.lock /node

COPY . .

EXPOSE 8000
HEALTHCHECK CMD curl -f http://localhost:8000/healthy || exit 1

RUN chmod +x docker-entrypoint.sh
ENTRYPOINT ["/app/docker-entrypoint.sh"]

CMD ["yarn", "run", "production"]
