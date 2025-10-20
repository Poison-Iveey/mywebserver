# Use official Nginx image
FROM nginx:latest

# Copy website files into container
COPY ./html /usr/share/nginx/html

EXPOSE 80
