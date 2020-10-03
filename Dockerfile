# TODO: specify exact alpine version when it hits stable
FROM alpine:edge AS thumbnail_builder
WORKDIR /data

# Install Gimp https://pkgs.org/download/gimp
RUN apk update && apk upgrade
RUN apk add bash
RUN apk add gimp=2.10.20-r2

# Generate PNG images from .xcf files
COPY ./project-thumbnails .
RUN chmod +x generate_pngs.sh
RUN ./generate_pngs.sh

####################################################

FROM node:14 AS application_builder
WORKDIR /app

# Export static website using Sapper
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN npm run export

####################################################

FROM nginx:1.19-alpine
WORKDIR /usr/share/nginx/html

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/*

# Copy Nginx configuration
COPY nginx-sapper.conf /etc/nginx/conf.d/sapper.conf

# Copy assets
COPY --from=application_builder /app/__sapper__/export .
RUN mkdir -p project-thumbnails
COPY --from=thumbnail_builder /data/*.png ./project-thumbnails/