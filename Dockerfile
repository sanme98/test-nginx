FROM node:lts-alpine as builder

ENV NPM_CONFIG_LOGLEVEL=warn
ENV NPM_CONFIG_COLOR=false

WORKDIR /app
COPY . /app

RUN npm install

RUN npm run build

## production environment
FROM nginx:stable-alpine as deploy
COPY --from=builder /app/build /usr/share/nginx/html
