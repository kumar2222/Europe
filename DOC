FROM node:16-alpine as builder
WORKDIR /app          # also creates the directory
COPY package*.json .

COPY . .


FROM nginx:latest
COPY --from=builder /app/dist/frontend /usr/share/nginx/html
