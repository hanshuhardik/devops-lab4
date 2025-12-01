FROM node:latest as build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

FROM node:latest

COPY --from=build /app /app

EXPOSE 5000

CMD ["node","server.js"]
