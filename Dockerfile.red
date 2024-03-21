# Use an official web server image as the base image
FROM nginx:alpine
EXPOSE 5001
# Copy the HTML file to the web server's document root
COPY red.html /usr/share/nginx/html/index.html
