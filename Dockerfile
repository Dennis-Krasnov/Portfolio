FROM archlinux:latest AS thumbnail_builder
WORKDIR /data

# Install Gimp
RUN pacman -Syu --noconfirm
RUN pacman -S gimp --noconfirm

# Generate PNG images from .xcf files
COPY ./project-thumbnails .
RUN chmod +x generate_pngs.sh
RUN ./generate_pngs.sh

####################################################

FROM node:14 AS application_builder
WORKDIR /data

# Build Javascipt bundle using svelte
COPY . .
RUN npm install
RUN npm run build

####################################################

FROM nginx:1.19-alpine
WORKDIR /usr/share/nginx/html

# Remove default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/*

# Copy Nginx configuration
COPY nginx-svelte.conf /etc/nginx/conf.d/svelte.conf

# Copy assets
RUN mkdir -p project-thumbnails
COPY --from=thumbnail_builder /data/*.png ./project-thumbnails/
COPY --from=application_builder /data/public .