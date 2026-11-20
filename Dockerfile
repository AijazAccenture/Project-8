# Start from the official lightweight Nginx web server image
FROM nginx:alpine

# Add a label describing the image
LABEL project="Project 8 - Build and Run Docker App Locally"

# Copy our web page into Nginx's default web folder
COPY index.html /usr/share/nginx/html/index.html

# The container listens on port 80
EXPOSE 80

# Start Nginx in the foreground so the container keeps running
CMD ["nginx", "-g", "daemon off;"]
