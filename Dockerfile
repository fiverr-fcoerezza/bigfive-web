FROM node:14-alpine

RUN apk add make nasm autoconf automake libtool dpkg pkgconfig libpng libpng-dev g++

WORKDIR /app

COPY . .

RUN yarn setup


RUN yarn build

EXPOSE 3000

CMD [ "yarn", "dev" ]
