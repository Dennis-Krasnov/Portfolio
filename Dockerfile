FROM nginx:1.23.2-alpine
COPY nginx.conf /etc/nginx
COPY build /app