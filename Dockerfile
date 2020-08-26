FROM nginx:1.19-alpine

# Remove default configuration
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /usr/share/nginx/html/*

# Nginx configuration
COPY nginx-svelte.conf /etc/nginx/conf.d/svelte.conf

# Javascipt bundle
COPY public /usr/share/nginx/html