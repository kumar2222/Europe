FROM node:16-alpine as builder
WORKDIR /app          # also creates the directory
COPY package*.json .

COPY . .
RUN ./node_modules/.bin/ng build --production  # not CMD

FROM nginx:latest
COPY --from=builder /app/dist/frontend /usr/share/nginx/html
