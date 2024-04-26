# Use a base image
FROM nginx:alpine

# Copy the HTML/CSS/JS code to the nginx web root directory
COPY index.html /usr/share/nginx/html

# Expose port 80
EXPOSE 80
