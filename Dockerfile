# first phase "builder". temporary container just for building
FROM node:16-alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# final container, just copying stuff from previous phase
FROM nginx
COPY --from=builder /app/build /usr/share/nginx/html