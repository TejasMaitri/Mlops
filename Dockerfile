# Use a lightweight Nginx image
FROM nginx:latest

# Copy the HTML, CSS, and JavaScript files to the default Nginx HTML directory
COPY index.html /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
